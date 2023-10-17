/* sys_keyin.c */
#include <stdio.h>
#include <termios.h>

void sys_keyset(int *mode)
{
    static struct termios termattr, saveattr;
    static tcflag_t save_flags;

    if (*mode != 0)
    {
        tcgetattr(0, &termattr);
        saveattr = termattr;
        termattr.c_lflag &= ~(ICANON | ECHO);
        termattr.c_cc[VMIN] = 1;
        termattr.c_cc[VTIME] = 0;
        tcsetattr(0, TCSADRAIN, &termattr);
    }
    else
    {
        tcsetattr(0, TCSADRAIN, &saveattr);
    }
}

void sys_keyin(int *nextch)
{
    *nextch = getchar();
}
