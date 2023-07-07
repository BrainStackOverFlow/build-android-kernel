#include<linux/init.h>
#include<linux/module.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("BSOF");

static int example_init(void){
	printk(KERN_INFO "Hello kernel world!\n");
	return 0;
}

static void example_exit(void){
	printk(KERN_INFO "Goodbye kernel world!\n");
}

module_init(example_init);
module_exit(example_exit);
