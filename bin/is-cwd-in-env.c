#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int is_exact_match(char *str, int len) {
  if (str[len] == '\0') {
    return 1;
  } else if (str[len] == ':') {
    return 1;
  } else if (str[len] == '/' && str[len + 1] == ':') {
    return 1;
  } else if (str[len] == '/' && str[len + 1] == '\0') {
    return 1;
  } else {
    return 0;
  }
}

int is_cwd_in_env(const char *env_val, const char *cwd) {
  char *str = strstr(env_val, cwd);
  if (str == NULL) {
    return 0;
  } else {
    int len = strlen(cwd);
    int idx = str - env_val;
    if (idx == 0) {
      return is_exact_match(str, len);
    } else if (env_val[idx - 1] == ':') {
      return is_exact_match(str, len);
    } else {
      return 0;
    }
  }
}

int main (int argc, char **argv) {
  int flag = 0;
  char *cwd = getcwd(NULL, 0);
  if (cwd == NULL) {
    return -1;
  } else {
    for (int i = 1; i < argc; i++) {
      char *env_val = getenv( argv[i] );
      if (env_val == NULL) continue;
      if ( is_cwd_in_env(env_val, cwd) ) {
        printf(" %s", argv[i]);
        flag = 1;
      }
    }
    free(cwd);
    if (flag != 0) printf(" \n");
  }
  return 0;
}
