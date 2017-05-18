
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400be8 <_init>:
  400be8:	48 83 ec 08          	sub    $0x8,%rsp
  400bec:	48 8b 05 05 44 20 00 	mov    0x204405(%rip),%rax        # 604ff8 <_DYNAMIC+0x1e0>
  400bf3:	48 85 c0             	test   %rax,%rax
  400bf6:	74 05                	je     400bfd <_init+0x15>
  400bf8:	e8 33 01 00 00       	callq  400d30 <__gmon_start__@plt>
  400bfd:	48 83 c4 08          	add    $0x8,%rsp
  400c01:	c3                   	retq   

Disassembly of section .plt:

0000000000400c10 <strcasecmp@plt-0x10>:
  400c10:	ff 35 f2 43 20 00    	pushq  0x2043f2(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c16:	ff 25 f4 43 20 00    	jmpq   *0x2043f4(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c20 <strcasecmp@plt>:
  400c20:	ff 25 f2 43 20 00    	jmpq   *0x2043f2(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c26:	68 00 00 00 00       	pushq  $0x0
  400c2b:	e9 e0 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400c30 <__errno_location@plt>:
  400c30:	ff 25 ea 43 20 00    	jmpq   *0x2043ea(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400c36:	68 01 00 00 00       	pushq  $0x1
  400c3b:	e9 d0 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400c40 <srandom@plt>:
  400c40:	ff 25 e2 43 20 00    	jmpq   *0x2043e2(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400c46:	68 02 00 00 00       	pushq  $0x2
  400c4b:	e9 c0 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400c50 <strncmp@plt>:
  400c50:	ff 25 da 43 20 00    	jmpq   *0x2043da(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400c56:	68 03 00 00 00       	pushq  $0x3
  400c5b:	e9 b0 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400c60 <strcpy@plt>:
  400c60:	ff 25 d2 43 20 00    	jmpq   *0x2043d2(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400c66:	68 04 00 00 00       	pushq  $0x4
  400c6b:	e9 a0 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400c70 <puts@plt>:
  400c70:	ff 25 ca 43 20 00    	jmpq   *0x2043ca(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400c76:	68 05 00 00 00       	pushq  $0x5
  400c7b:	e9 90 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400c80 <write@plt>:
  400c80:	ff 25 c2 43 20 00    	jmpq   *0x2043c2(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400c86:	68 06 00 00 00       	pushq  $0x6
  400c8b:	e9 80 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400c90 <mmap@plt>:
  400c90:	ff 25 ba 43 20 00    	jmpq   *0x2043ba(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400c96:	68 07 00 00 00       	pushq  $0x7
  400c9b:	e9 70 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400ca0 <printf@plt>:
  400ca0:	ff 25 b2 43 20 00    	jmpq   *0x2043b2(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400ca6:	68 08 00 00 00       	pushq  $0x8
  400cab:	e9 60 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400cb0 <memset@plt>:
  400cb0:	ff 25 aa 43 20 00    	jmpq   *0x2043aa(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400cb6:	68 09 00 00 00       	pushq  $0x9
  400cbb:	e9 50 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400cc0 <alarm@plt>:
  400cc0:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400cc6:	68 0a 00 00 00       	pushq  $0xa
  400ccb:	e9 40 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400cd0 <close@plt>:
  400cd0:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400cd6:	68 0b 00 00 00       	pushq  $0xb
  400cdb:	e9 30 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400ce0 <read@plt>:
  400ce0:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400ce6:	68 0c 00 00 00       	pushq  $0xc
  400ceb:	e9 20 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400cf0 <__libc_start_main@plt>:
  400cf0:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400cf6:	68 0d 00 00 00       	pushq  $0xd
  400cfb:	e9 10 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d00 <signal@plt>:
  400d00:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d06:	68 0e 00 00 00       	pushq  $0xe
  400d0b:	e9 00 ff ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d10 <gethostbyname@plt>:
  400d10:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d16:	68 0f 00 00 00       	pushq  $0xf
  400d1b:	e9 f0 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d20 <fprintf@plt>:
  400d20:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d26:	68 10 00 00 00       	pushq  $0x10
  400d2b:	e9 e0 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d30 <__gmon_start__@plt>:
  400d30:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400d36:	68 11 00 00 00       	pushq  $0x11
  400d3b:	e9 d0 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d40 <strtol@plt>:
  400d40:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400d46:	68 12 00 00 00       	pushq  $0x12
  400d4b:	e9 c0 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d50 <memcpy@plt>:
  400d50:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400d56:	68 13 00 00 00       	pushq  $0x13
  400d5b:	e9 b0 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d60 <time@plt>:
  400d60:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400d66:	68 14 00 00 00       	pushq  $0x14
  400d6b:	e9 a0 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d70 <random@plt>:
  400d70:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400d76:	68 15 00 00 00       	pushq  $0x15
  400d7b:	e9 90 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d80 <_IO_getc@plt>:
  400d80:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400d86:	68 16 00 00 00       	pushq  $0x16
  400d8b:	e9 80 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400d90 <__isoc99_sscanf@plt>:
  400d90:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400d96:	68 17 00 00 00       	pushq  $0x17
  400d9b:	e9 70 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400da0 <munmap@plt>:
  400da0:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400da6:	68 18 00 00 00       	pushq  $0x18
  400dab:	e9 60 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400db0 <bcopy@plt>:
  400db0:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400db6:	68 19 00 00 00       	pushq  $0x19
  400dbb:	e9 50 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400dc0 <fopen@plt>:
  400dc0:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400dc6:	68 1a 00 00 00       	pushq  $0x1a
  400dcb:	e9 40 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400dd0 <getopt@plt>:
  400dd0:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400dd6:	68 1b 00 00 00       	pushq  $0x1b
  400ddb:	e9 30 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400de0 <strtoul@plt>:
  400de0:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400de6:	68 1c 00 00 00       	pushq  $0x1c
  400deb:	e9 20 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400df0 <gethostname@plt>:
  400df0:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400df6:	68 1d 00 00 00       	pushq  $0x1d
  400dfb:	e9 10 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400e00 <sprintf@plt>:
  400e00:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e06:	68 1e 00 00 00       	pushq  $0x1e
  400e0b:	e9 00 fe ff ff       	jmpq   400c10 <_init+0x28>

0000000000400e10 <exit@plt>:
  400e10:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e16:	68 1f 00 00 00       	pushq  $0x1f
  400e1b:	e9 f0 fd ff ff       	jmpq   400c10 <_init+0x28>

0000000000400e20 <connect@plt>:
  400e20:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e26:	68 20 00 00 00       	pushq  $0x20
  400e2b:	e9 e0 fd ff ff       	jmpq   400c10 <_init+0x28>

0000000000400e30 <socket@plt>:
  400e30:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400e36:	68 21 00 00 00       	pushq  $0x21
  400e3b:	e9 d0 fd ff ff       	jmpq   400c10 <_init+0x28>

Disassembly of section .text:

0000000000400e40 <_start>:
  400e40:	31 ed                	xor    %ebp,%ebp
  400e42:	49 89 d1             	mov    %rdx,%r9
  400e45:	5e                   	pop    %rsi
  400e46:	48 89 e2             	mov    %rsp,%rdx
  400e49:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e4d:	50                   	push   %rax
  400e4e:	54                   	push   %rsp
  400e4f:	49 c7 c0 70 2c 40 00 	mov    $0x402c70,%r8
  400e56:	48 c7 c1 00 2c 40 00 	mov    $0x402c00,%rcx
  400e5d:	48 c7 c7 00 11 40 00 	mov    $0x401100,%rdi
  400e64:	e8 87 fe ff ff       	callq  400cf0 <__libc_start_main@plt>
  400e69:	f4                   	hlt    
  400e6a:	66 90                	xchg   %ax,%ax
  400e6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e70 <deregister_tm_clones>:
  400e70:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400e75:	55                   	push   %rbp
  400e76:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400e7c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e80:	48 89 e5             	mov    %rsp,%rbp
  400e83:	77 02                	ja     400e87 <deregister_tm_clones+0x17>
  400e85:	5d                   	pop    %rbp
  400e86:	c3                   	retq   
  400e87:	b8 00 00 00 00       	mov    $0x0,%eax
  400e8c:	48 85 c0             	test   %rax,%rax
  400e8f:	74 f4                	je     400e85 <deregister_tm_clones+0x15>
  400e91:	5d                   	pop    %rbp
  400e92:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400e97:	ff e0                	jmpq   *%rax
  400e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ea0 <register_tm_clones>:
  400ea0:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400ea5:	55                   	push   %rbp
  400ea6:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400eac:	48 c1 f8 03          	sar    $0x3,%rax
  400eb0:	48 89 e5             	mov    %rsp,%rbp
  400eb3:	48 89 c2             	mov    %rax,%rdx
  400eb6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400eba:	48 01 d0             	add    %rdx,%rax
  400ebd:	48 d1 f8             	sar    %rax
  400ec0:	75 02                	jne    400ec4 <register_tm_clones+0x24>
  400ec2:	5d                   	pop    %rbp
  400ec3:	c3                   	retq   
  400ec4:	ba 00 00 00 00       	mov    $0x0,%edx
  400ec9:	48 85 d2             	test   %rdx,%rdx
  400ecc:	74 f4                	je     400ec2 <register_tm_clones+0x22>
  400ece:	5d                   	pop    %rbp
  400ecf:	48 89 c6             	mov    %rax,%rsi
  400ed2:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400ed7:	ff e2                	jmpq   *%rdx
  400ed9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ee0 <__do_global_dtors_aux>:
  400ee0:	80 3d f1 45 20 00 00 	cmpb   $0x0,0x2045f1(%rip)        # 6054d8 <completed.6342>
  400ee7:	75 11                	jne    400efa <__do_global_dtors_aux+0x1a>
  400ee9:	55                   	push   %rbp
  400eea:	48 89 e5             	mov    %rsp,%rbp
  400eed:	e8 7e ff ff ff       	callq  400e70 <deregister_tm_clones>
  400ef2:	5d                   	pop    %rbp
  400ef3:	c6 05 de 45 20 00 01 	movb   $0x1,0x2045de(%rip)        # 6054d8 <completed.6342>
  400efa:	f3 c3                	repz retq 
  400efc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f00 <frame_dummy>:
  400f00:	48 83 3d 08 3f 20 00 	cmpq   $0x0,0x203f08(%rip)        # 604e10 <__JCR_END__>
  400f07:	00 
  400f08:	74 1e                	je     400f28 <frame_dummy+0x28>
  400f0a:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0f:	48 85 c0             	test   %rax,%rax
  400f12:	74 14                	je     400f28 <frame_dummy+0x28>
  400f14:	55                   	push   %rbp
  400f15:	bf 10 4e 60 00       	mov    $0x604e10,%edi
  400f1a:	48 89 e5             	mov    %rsp,%rbp
  400f1d:	ff d0                	callq  *%rax
  400f1f:	5d                   	pop    %rbp
  400f20:	e9 7b ff ff ff       	jmpq   400ea0 <register_tm_clones>
  400f25:	0f 1f 00             	nopl   (%rax)
  400f28:	e9 73 ff ff ff       	jmpq   400ea0 <register_tm_clones>
  400f2d:	0f 1f 00             	nopl   (%rax)

0000000000400f30 <usage>:
  400f30:	48 83 ec 08          	sub    $0x8,%rsp
  400f34:	48 89 fe             	mov    %rdi,%rsi
  400f37:	83 3d ca 45 20 00 00 	cmpl   $0x0,0x2045ca(%rip)        # 605508 <is_checker>
  400f3e:	74 39                	je     400f79 <usage+0x49>
  400f40:	bf 90 2c 40 00       	mov    $0x402c90,%edi
  400f45:	b8 00 00 00 00       	mov    $0x0,%eax
  400f4a:	e8 51 fd ff ff       	callq  400ca0 <printf@plt>
  400f4f:	bf c8 2c 40 00       	mov    $0x402cc8,%edi
  400f54:	e8 17 fd ff ff       	callq  400c70 <puts@plt>
  400f59:	bf 40 2e 40 00       	mov    $0x402e40,%edi
  400f5e:	e8 0d fd ff ff       	callq  400c70 <puts@plt>
  400f63:	bf f0 2c 40 00       	mov    $0x402cf0,%edi
  400f68:	e8 03 fd ff ff       	callq  400c70 <puts@plt>
  400f6d:	bf 5a 2e 40 00       	mov    $0x402e5a,%edi
  400f72:	e8 f9 fc ff ff       	callq  400c70 <puts@plt>
  400f77:	eb 2d                	jmp    400fa6 <usage+0x76>
  400f79:	bf 76 2e 40 00       	mov    $0x402e76,%edi
  400f7e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f83:	e8 18 fd ff ff       	callq  400ca0 <printf@plt>
  400f88:	bf 18 2d 40 00       	mov    $0x402d18,%edi
  400f8d:	e8 de fc ff ff       	callq  400c70 <puts@plt>
  400f92:	bf 40 2d 40 00       	mov    $0x402d40,%edi
  400f97:	e8 d4 fc ff ff       	callq  400c70 <puts@plt>
  400f9c:	bf 94 2e 40 00       	mov    $0x402e94,%edi
  400fa1:	e8 ca fc ff ff       	callq  400c70 <puts@plt>
  400fa6:	bf 00 00 00 00       	mov    $0x0,%edi
  400fab:	e8 60 fe ff ff       	callq  400e10 <exit@plt>

0000000000400fb0 <initialize_target>:
  400fb0:	55                   	push   %rbp
  400fb1:	53                   	push   %rbx
  400fb2:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400fb9:	89 f5                	mov    %esi,%ebp
  400fbb:	89 3d 37 45 20 00    	mov    %edi,0x204537(%rip)        # 6054f8 <check_level>
  400fc1:	8b 3d a1 41 20 00    	mov    0x2041a1(%rip),%edi        # 605168 <target_id>
  400fc7:	e8 12 1c 00 00       	callq  402bde <gencookie>
  400fcc:	89 05 32 45 20 00    	mov    %eax,0x204532(%rip)        # 605504 <cookie>
  400fd2:	89 c7                	mov    %eax,%edi
  400fd4:	e8 05 1c 00 00       	callq  402bde <gencookie>
  400fd9:	89 05 21 45 20 00    	mov    %eax,0x204521(%rip)        # 605500 <authkey>
  400fdf:	8b 05 83 41 20 00    	mov    0x204183(%rip),%eax        # 605168 <target_id>
  400fe5:	8d 78 01             	lea    0x1(%rax),%edi
  400fe8:	e8 53 fc ff ff       	callq  400c40 <srandom@plt>
  400fed:	e8 7e fd ff ff       	callq  400d70 <random@plt>
  400ff2:	89 c7                	mov    %eax,%edi
  400ff4:	e8 cb 02 00 00       	callq  4012c4 <scramble>
  400ff9:	89 c3                	mov    %eax,%ebx
  400ffb:	85 ed                	test   %ebp,%ebp
  400ffd:	74 18                	je     401017 <initialize_target+0x67>
  400fff:	bf 00 00 00 00       	mov    $0x0,%edi
  401004:	e8 57 fd ff ff       	callq  400d60 <time@plt>
  401009:	89 c7                	mov    %eax,%edi
  40100b:	e8 30 fc ff ff       	callq  400c40 <srandom@plt>
  401010:	e8 5b fd ff ff       	callq  400d70 <random@plt>
  401015:	eb 05                	jmp    40101c <initialize_target+0x6c>
  401017:	b8 00 00 00 00       	mov    $0x0,%eax
  40101c:	01 c3                	add    %eax,%ebx
  40101e:	0f b7 db             	movzwl %bx,%ebx
  401021:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  401028:	89 c0                	mov    %eax,%eax
  40102a:	48 89 05 6f 44 20 00 	mov    %rax,0x20446f(%rip)        # 6054a0 <buf_offset>
  401031:	c6 05 f0 50 20 00 72 	movb   $0x72,0x2050f0(%rip)        # 606128 <target_prefix>
  401038:	83 3d 69 44 20 00 00 	cmpl   $0x0,0x204469(%rip)        # 6054a8 <notify>
  40103f:	0f 84 b1 00 00 00    	je     4010f6 <initialize_target+0x146>
  401045:	83 3d bc 44 20 00 00 	cmpl   $0x0,0x2044bc(%rip)        # 605508 <is_checker>
  40104c:	0f 85 a4 00 00 00    	jne    4010f6 <initialize_target+0x146>
  401052:	be 00 01 00 00       	mov    $0x100,%esi
  401057:	48 89 e7             	mov    %rsp,%rdi
  40105a:	e8 91 fd ff ff       	callq  400df0 <gethostname@plt>
  40105f:	85 c0                	test   %eax,%eax
  401061:	74 25                	je     401088 <initialize_target+0xd8>
  401063:	bf 70 2d 40 00       	mov    $0x402d70,%edi
  401068:	e8 03 fc ff ff       	callq  400c70 <puts@plt>
  40106d:	bf 08 00 00 00       	mov    $0x8,%edi
  401072:	e8 99 fd ff ff       	callq  400e10 <exit@plt>
  401077:	48 89 e6             	mov    %rsp,%rsi
  40107a:	e8 a1 fb ff ff       	callq  400c20 <strcasecmp@plt>
  40107f:	85 c0                	test   %eax,%eax
  401081:	74 21                	je     4010a4 <initialize_target+0xf4>
  401083:	83 c3 01             	add    $0x1,%ebx
  401086:	eb 05                	jmp    40108d <initialize_target+0xdd>
  401088:	bb 00 00 00 00       	mov    $0x0,%ebx
  40108d:	48 63 c3             	movslq %ebx,%rax
  401090:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  401097:	00 
  401098:	48 85 ff             	test   %rdi,%rdi
  40109b:	75 da                	jne    401077 <initialize_target+0xc7>
  40109d:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a2:	eb 05                	jmp    4010a9 <initialize_target+0xf9>
  4010a4:	b8 01 00 00 00       	mov    $0x1,%eax
  4010a9:	85 c0                	test   %eax,%eax
  4010ab:	75 17                	jne    4010c4 <initialize_target+0x114>
  4010ad:	48 89 e6             	mov    %rsp,%rsi
  4010b0:	bf a8 2d 40 00       	mov    $0x402da8,%edi
  4010b5:	e8 e6 fb ff ff       	callq  400ca0 <printf@plt>
  4010ba:	bf 08 00 00 00       	mov    $0x8,%edi
  4010bf:	e8 4c fd ff ff       	callq  400e10 <exit@plt>
  4010c4:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4010cb:	00 
  4010cc:	e8 a4 18 00 00       	callq  402975 <init_driver>
  4010d1:	85 c0                	test   %eax,%eax
  4010d3:	79 21                	jns    4010f6 <initialize_target+0x146>
  4010d5:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4010dc:	00 
  4010dd:	bf e8 2d 40 00       	mov    $0x402de8,%edi
  4010e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e7:	e8 b4 fb ff ff       	callq  400ca0 <printf@plt>
  4010ec:	bf 08 00 00 00       	mov    $0x8,%edi
  4010f1:	e8 1a fd ff ff       	callq  400e10 <exit@plt>
  4010f6:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  4010fd:	5b                   	pop    %rbx
  4010fe:	5d                   	pop    %rbp
  4010ff:	c3                   	retq   

0000000000401100 <main>:
  401100:	41 56                	push   %r14
  401102:	41 55                	push   %r13
  401104:	41 54                	push   %r12
  401106:	55                   	push   %rbp
  401107:	53                   	push   %rbx
  401108:	41 89 fc             	mov    %edi,%r12d
  40110b:	48 89 f3             	mov    %rsi,%rbx
  40110e:	be 81 1d 40 00       	mov    $0x401d81,%esi
  401113:	bf 0b 00 00 00       	mov    $0xb,%edi
  401118:	e8 e3 fb ff ff       	callq  400d00 <signal@plt>
  40111d:	be 33 1d 40 00       	mov    $0x401d33,%esi
  401122:	bf 07 00 00 00       	mov    $0x7,%edi
  401127:	e8 d4 fb ff ff       	callq  400d00 <signal@plt>
  40112c:	be cf 1d 40 00       	mov    $0x401dcf,%esi
  401131:	bf 04 00 00 00       	mov    $0x4,%edi
  401136:	e8 c5 fb ff ff       	callq  400d00 <signal@plt>
  40113b:	83 3d c6 43 20 00 00 	cmpl   $0x0,0x2043c6(%rip)        # 605508 <is_checker>
  401142:	74 20                	je     401164 <main+0x64>
  401144:	be 1d 1e 40 00       	mov    $0x401e1d,%esi
  401149:	bf 0e 00 00 00       	mov    $0xe,%edi
  40114e:	e8 ad fb ff ff       	callq  400d00 <signal@plt>
  401153:	bf 05 00 00 00       	mov    $0x5,%edi
  401158:	e8 63 fb ff ff       	callq  400cc0 <alarm@plt>
  40115d:	bd b2 2e 40 00       	mov    $0x402eb2,%ebp
  401162:	eb 05                	jmp    401169 <main+0x69>
  401164:	bd ad 2e 40 00       	mov    $0x402ead,%ebp
  401169:	48 8b 05 50 43 20 00 	mov    0x204350(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401170:	48 89 05 79 43 20 00 	mov    %rax,0x204379(%rip)        # 6054f0 <infile>
  401177:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40117d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401183:	e9 b9 00 00 00       	jmpq   401241 <main+0x141>
  401188:	83 e8 61             	sub    $0x61,%eax
  40118b:	3c 10                	cmp    $0x10,%al
  40118d:	0f 87 93 00 00 00    	ja     401226 <main+0x126>
  401193:	0f b6 c0             	movzbl %al,%eax
  401196:	ff 24 c5 f8 2e 40 00 	jmpq   *0x402ef8(,%rax,8)
  40119d:	48 8b 3b             	mov    (%rbx),%rdi
  4011a0:	e8 8b fd ff ff       	callq  400f30 <usage>
  4011a5:	be cd 32 40 00       	mov    $0x4032cd,%esi
  4011aa:	48 8b 3d 17 43 20 00 	mov    0x204317(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4011b1:	e8 0a fc ff ff       	callq  400dc0 <fopen@plt>
  4011b6:	48 89 05 33 43 20 00 	mov    %rax,0x204333(%rip)        # 6054f0 <infile>
  4011bd:	48 85 c0             	test   %rax,%rax
  4011c0:	75 7f                	jne    401241 <main+0x141>
  4011c2:	48 8b 15 ff 42 20 00 	mov    0x2042ff(%rip),%rdx        # 6054c8 <optarg@@GLIBC_2.2.5>
  4011c9:	be ba 2e 40 00       	mov    $0x402eba,%esi
  4011ce:	48 8b 3d fb 42 20 00 	mov    0x2042fb(%rip),%rdi        # 6054d0 <stderr@@GLIBC_2.2.5>
  4011d5:	e8 46 fb ff ff       	callq  400d20 <fprintf@plt>
  4011da:	b8 01 00 00 00       	mov    $0x1,%eax
  4011df:	e9 d6 00 00 00       	jmpq   4012ba <main+0x1ba>
  4011e4:	ba 10 00 00 00       	mov    $0x10,%edx
  4011e9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ee:	48 8b 3d d3 42 20 00 	mov    0x2042d3(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4011f5:	e8 e6 fb ff ff       	callq  400de0 <strtoul@plt>
  4011fa:	41 89 c6             	mov    %eax,%r14d
  4011fd:	eb 42                	jmp    401241 <main+0x141>
  4011ff:	ba 0a 00 00 00       	mov    $0xa,%edx
  401204:	be 00 00 00 00       	mov    $0x0,%esi
  401209:	48 8b 3d b8 42 20 00 	mov    0x2042b8(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401210:	e8 2b fb ff ff       	callq  400d40 <strtol@plt>
  401215:	41 89 c5             	mov    %eax,%r13d
  401218:	eb 27                	jmp    401241 <main+0x141>
  40121a:	c7 05 84 42 20 00 00 	movl   $0x0,0x204284(%rip)        # 6054a8 <notify>
  401221:	00 00 00 
  401224:	eb 1b                	jmp    401241 <main+0x141>
  401226:	40 0f be f6          	movsbl %sil,%esi
  40122a:	bf d7 2e 40 00       	mov    $0x402ed7,%edi
  40122f:	b8 00 00 00 00       	mov    $0x0,%eax
  401234:	e8 67 fa ff ff       	callq  400ca0 <printf@plt>
  401239:	48 8b 3b             	mov    (%rbx),%rdi
  40123c:	e8 ef fc ff ff       	callq  400f30 <usage>
  401241:	48 89 ea             	mov    %rbp,%rdx
  401244:	48 89 de             	mov    %rbx,%rsi
  401247:	44 89 e7             	mov    %r12d,%edi
  40124a:	e8 81 fb ff ff       	callq  400dd0 <getopt@plt>
  40124f:	89 c6                	mov    %eax,%esi
  401251:	3c ff                	cmp    $0xff,%al
  401253:	0f 85 2f ff ff ff    	jne    401188 <main+0x88>
  401259:	be 01 00 00 00       	mov    $0x1,%esi
  40125e:	44 89 ef             	mov    %r13d,%edi
  401261:	e8 4a fd ff ff       	callq  400fb0 <initialize_target>
  401266:	83 3d 9b 42 20 00 00 	cmpl   $0x0,0x20429b(%rip)        # 605508 <is_checker>
  40126d:	74 25                	je     401294 <main+0x194>
  40126f:	44 3b 35 8a 42 20 00 	cmp    0x20428a(%rip),%r14d        # 605500 <authkey>
  401276:	74 1c                	je     401294 <main+0x194>
  401278:	44 89 f6             	mov    %r14d,%esi
  40127b:	bf 10 2e 40 00       	mov    $0x402e10,%edi
  401280:	b8 00 00 00 00       	mov    $0x0,%eax
  401285:	e8 16 fa ff ff       	callq  400ca0 <printf@plt>
  40128a:	b8 00 00 00 00       	mov    $0x0,%eax
  40128f:	e8 a7 07 00 00       	callq  401a3b <check_fail>
  401294:	8b 35 6a 42 20 00    	mov    0x20426a(%rip),%esi        # 605504 <cookie>
  40129a:	bf ea 2e 40 00       	mov    $0x402eea,%edi
  40129f:	b8 00 00 00 00       	mov    $0x0,%eax
  4012a4:	e8 f7 f9 ff ff       	callq  400ca0 <printf@plt>
  4012a9:	48 8b 3d f0 41 20 00 	mov    0x2041f0(%rip),%rdi        # 6054a0 <buf_offset>
  4012b0:	e8 b6 0b 00 00       	callq  401e6b <launch>
  4012b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4012ba:	5b                   	pop    %rbx
  4012bb:	5d                   	pop    %rbp
  4012bc:	41 5c                	pop    %r12
  4012be:	41 5d                	pop    %r13
  4012c0:	41 5e                	pop    %r14
  4012c2:	c3                   	retq   
  4012c3:	90                   	nop

00000000004012c4 <scramble>:
  4012c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c9:	eb 11                	jmp    4012dc <scramble+0x18>
  4012cb:	69 c8 8a ae 00 00    	imul   $0xae8a,%eax,%ecx
  4012d1:	01 f9                	add    %edi,%ecx
  4012d3:	89 c2                	mov    %eax,%edx
  4012d5:	89 4c 94 d0          	mov    %ecx,-0x30(%rsp,%rdx,4)
  4012d9:	83 c0 01             	add    $0x1,%eax
  4012dc:	83 f8 09             	cmp    $0x9,%eax
  4012df:	76 ea                	jbe    4012cb <scramble+0x7>
  4012e1:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4012e5:	69 c0 60 55 00 00    	imul   $0x5560,%eax,%eax
  4012eb:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4012ef:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012f3:	69 c0 22 75 00 00    	imul   $0x7522,%eax,%eax
  4012f9:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012fd:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401301:	69 c0 22 bd 00 00    	imul   $0xbd22,%eax,%eax
  401307:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40130b:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40130f:	69 c0 4c 5e 00 00    	imul   $0x5e4c,%eax,%eax
  401315:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401319:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40131d:	69 c0 d0 c5 00 00    	imul   $0xc5d0,%eax,%eax
  401323:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401327:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40132b:	69 c0 ca 05 00 00    	imul   $0x5ca,%eax,%eax
  401331:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401335:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401339:	69 c0 db d9 00 00    	imul   $0xd9db,%eax,%eax
  40133f:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401343:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401347:	69 c0 40 6a 00 00    	imul   $0x6a40,%eax,%eax
  40134d:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401351:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401355:	69 c0 83 01 00 00    	imul   $0x183,%eax,%eax
  40135b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40135f:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401363:	69 c0 26 50 00 00    	imul   $0x5026,%eax,%eax
  401369:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40136d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401371:	69 c0 75 75 00 00    	imul   $0x7575,%eax,%eax
  401377:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40137b:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40137f:	69 c0 6e 4a 00 00    	imul   $0x4a6e,%eax,%eax
  401385:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401389:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40138d:	69 c0 8f 70 00 00    	imul   $0x708f,%eax,%eax
  401393:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401397:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40139b:	69 c0 92 56 00 00    	imul   $0x5692,%eax,%eax
  4013a1:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013a5:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013a9:	69 c0 19 38 00 00    	imul   $0x3819,%eax,%eax
  4013af:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013b3:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013b7:	69 c0 9e 78 00 00    	imul   $0x789e,%eax,%eax
  4013bd:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013c1:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4013c5:	69 c0 0a 86 00 00    	imul   $0x860a,%eax,%eax
  4013cb:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4013cf:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013d3:	69 c0 b8 b7 00 00    	imul   $0xb7b8,%eax,%eax
  4013d9:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013dd:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013e1:	69 c0 75 0e 00 00    	imul   $0xe75,%eax,%eax
  4013e7:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013eb:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4013ef:	69 c0 5c d8 00 00    	imul   $0xd85c,%eax,%eax
  4013f5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013f9:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4013fd:	69 c0 67 29 00 00    	imul   $0x2967,%eax,%eax
  401403:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401407:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40140b:	69 c0 15 9e 00 00    	imul   $0x9e15,%eax,%eax
  401411:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401415:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401419:	69 c0 1b 29 00 00    	imul   $0x291b,%eax,%eax
  40141f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401423:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401427:	69 c0 b5 fc 00 00    	imul   $0xfcb5,%eax,%eax
  40142d:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401431:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401435:	69 c0 83 80 00 00    	imul   $0x8083,%eax,%eax
  40143b:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40143f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401443:	69 c0 9c cb 00 00    	imul   $0xcb9c,%eax,%eax
  401449:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40144d:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401451:	69 c0 09 42 00 00    	imul   $0x4209,%eax,%eax
  401457:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40145b:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40145f:	69 c0 ca c8 00 00    	imul   $0xc8ca,%eax,%eax
  401465:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401469:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40146d:	69 c0 35 f3 00 00    	imul   $0xf335,%eax,%eax
  401473:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401477:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40147b:	69 c0 ab 7c 00 00    	imul   $0x7cab,%eax,%eax
  401481:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401485:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401489:	69 c0 9d 79 00 00    	imul   $0x799d,%eax,%eax
  40148f:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401493:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401497:	69 c0 c8 b8 00 00    	imul   $0xb8c8,%eax,%eax
  40149d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4014a1:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014a5:	69 c0 09 e3 00 00    	imul   $0xe309,%eax,%eax
  4014ab:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014af:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014b3:	69 c0 d4 42 00 00    	imul   $0x42d4,%eax,%eax
  4014b9:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014bd:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014c1:	69 c0 85 86 00 00    	imul   $0x8685,%eax,%eax
  4014c7:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014cb:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014cf:	69 c0 c3 c5 00 00    	imul   $0xc5c3,%eax,%eax
  4014d5:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014d9:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014dd:	69 c0 56 f9 00 00    	imul   $0xf956,%eax,%eax
  4014e3:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014e7:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014eb:	69 c0 2f b3 00 00    	imul   $0xb32f,%eax,%eax
  4014f1:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014f5:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014f9:	69 c0 2e 6c 00 00    	imul   $0x6c2e,%eax,%eax
  4014ff:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401503:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401507:	69 c0 10 4d 00 00    	imul   $0x4d10,%eax,%eax
  40150d:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401511:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401515:	69 c0 c0 fc 00 00    	imul   $0xfcc0,%eax,%eax
  40151b:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40151f:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401523:	69 c0 a9 e2 00 00    	imul   $0xe2a9,%eax,%eax
  401529:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40152d:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401531:	69 c0 b7 2e 00 00    	imul   $0x2eb7,%eax,%eax
  401537:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40153b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40153f:	69 c0 61 f1 00 00    	imul   $0xf161,%eax,%eax
  401545:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401549:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40154d:	69 c0 d1 ca 00 00    	imul   $0xcad1,%eax,%eax
  401553:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401557:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40155b:	69 c0 3a 4d 00 00    	imul   $0x4d3a,%eax,%eax
  401561:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401565:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401569:	69 c0 56 63 00 00    	imul   $0x6356,%eax,%eax
  40156f:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401573:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401577:	69 c0 15 44 00 00    	imul   $0x4415,%eax,%eax
  40157d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401581:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401585:	69 c0 84 76 00 00    	imul   $0x7684,%eax,%eax
  40158b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40158f:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401593:	69 c0 de 37 00 00    	imul   $0x37de,%eax,%eax
  401599:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40159d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015a1:	69 c0 19 a2 00 00    	imul   $0xa219,%eax,%eax
  4015a7:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015ab:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4015af:	69 c0 f6 ac 00 00    	imul   $0xacf6,%eax,%eax
  4015b5:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4015b9:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015bd:	69 c0 7a 61 00 00    	imul   $0x617a,%eax,%eax
  4015c3:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015c7:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015cb:	69 c0 e2 bd 00 00    	imul   $0xbde2,%eax,%eax
  4015d1:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015d5:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015d9:	69 c0 09 10 00 00    	imul   $0x1009,%eax,%eax
  4015df:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015e3:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015e7:	69 c0 59 ba 00 00    	imul   $0xba59,%eax,%eax
  4015ed:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015f1:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015f5:	69 c0 9f 23 00 00    	imul   $0x239f,%eax,%eax
  4015fb:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015ff:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401603:	69 c0 92 4b 00 00    	imul   $0x4b92,%eax,%eax
  401609:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40160d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401611:	69 c0 76 48 00 00    	imul   $0x4876,%eax,%eax
  401617:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40161b:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40161f:	69 c0 42 74 00 00    	imul   $0x7442,%eax,%eax
  401625:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401629:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40162d:	69 c0 00 ab 00 00    	imul   $0xab00,%eax,%eax
  401633:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401637:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40163b:	69 c0 b5 57 00 00    	imul   $0x57b5,%eax,%eax
  401641:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401645:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401649:	69 c0 7f c7 00 00    	imul   $0xc77f,%eax,%eax
  40164f:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401653:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401657:	69 c0 b5 54 00 00    	imul   $0x54b5,%eax,%eax
  40165d:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401661:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401665:	69 c0 b4 22 00 00    	imul   $0x22b4,%eax,%eax
  40166b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40166f:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401673:	69 c0 0d 3b 00 00    	imul   $0x3b0d,%eax,%eax
  401679:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40167d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401681:	69 c0 35 8a 00 00    	imul   $0x8a35,%eax,%eax
  401687:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40168b:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40168f:	69 c0 3e 60 00 00    	imul   $0x603e,%eax,%eax
  401695:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401699:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40169d:	69 c0 28 48 00 00    	imul   $0x4828,%eax,%eax
  4016a3:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016a7:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016ab:	69 c0 57 b9 00 00    	imul   $0xb957,%eax,%eax
  4016b1:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016b5:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016b9:	69 c0 12 29 00 00    	imul   $0x2912,%eax,%eax
  4016bf:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016c3:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016c7:	69 c0 fb 64 00 00    	imul   $0x64fb,%eax,%eax
  4016cd:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016d1:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016d5:	69 c0 b2 10 00 00    	imul   $0x10b2,%eax,%eax
  4016db:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016df:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016e3:	69 c0 07 9f 00 00    	imul   $0x9f07,%eax,%eax
  4016e9:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016ed:	ba 00 00 00 00       	mov    $0x0,%edx
  4016f2:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f7:	eb 0b                	jmp    401704 <scramble+0x440>
  4016f9:	89 d1                	mov    %edx,%ecx
  4016fb:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  4016ff:	01 c8                	add    %ecx,%eax
  401701:	83 c2 01             	add    $0x1,%edx
  401704:	83 fa 09             	cmp    $0x9,%edx
  401707:	76 f0                	jbe    4016f9 <scramble+0x435>
  401709:	f3 c3                	repz retq 
  40170b:	90                   	nop

000000000040170c <getbuf>:
  40170c:	48 83 ec 38          	sub    $0x38,%rsp
  401710:	48 89 e7             	mov    %rsp,%rdi
  401713:	e8 52 03 00 00       	callq  401a6a <Gets>
  401718:	b8 01 00 00 00       	mov    $0x1,%eax
  40171d:	48 83 c4 38          	add    $0x38,%rsp
  401721:	c3                   	retq   
  401722:	66 90                	xchg   %ax,%ax

0000000000401724 <touch1>:
  401724:	48 83 ec 08          	sub    $0x8,%rsp
  401728:	c7 05 ca 3d 20 00 01 	movl   $0x1,0x203dca(%rip)        # 6054fc <vlevel>
  40172f:	00 00 00 
  401732:	bf 1f 31 40 00       	mov    $0x40311f,%edi
  401737:	e8 34 f5 ff ff       	callq  400c70 <puts@plt>
  40173c:	bf 01 00 00 00       	mov    $0x1,%edi
  401741:	e8 13 05 00 00       	callq  401c59 <validate>
  401746:	bf 00 00 00 00       	mov    $0x0,%edi
  40174b:	e8 c0 f6 ff ff       	callq  400e10 <exit@plt>

0000000000401750 <touch2>:
  401750:	48 83 ec 08          	sub    $0x8,%rsp
  401754:	89 fe                	mov    %edi,%esi
  401756:	c7 05 9c 3d 20 00 02 	movl   $0x2,0x203d9c(%rip)        # 6054fc <vlevel>
  40175d:	00 00 00 
  401760:	3b 3d 9e 3d 20 00    	cmp    0x203d9e(%rip),%edi        # 605504 <cookie>
  401766:	75 1b                	jne    401783 <touch2+0x33>
  401768:	bf 48 31 40 00       	mov    $0x403148,%edi
  40176d:	b8 00 00 00 00       	mov    $0x0,%eax
  401772:	e8 29 f5 ff ff       	callq  400ca0 <printf@plt>
  401777:	bf 02 00 00 00       	mov    $0x2,%edi
  40177c:	e8 d8 04 00 00       	callq  401c59 <validate>
  401781:	eb 19                	jmp    40179c <touch2+0x4c>
  401783:	bf 70 31 40 00       	mov    $0x403170,%edi
  401788:	b8 00 00 00 00       	mov    $0x0,%eax
  40178d:	e8 0e f5 ff ff       	callq  400ca0 <printf@plt>
  401792:	bf 02 00 00 00       	mov    $0x2,%edi
  401797:	e8 6f 05 00 00       	callq  401d0b <fail>
  40179c:	bf 00 00 00 00       	mov    $0x0,%edi
  4017a1:	e8 6a f6 ff ff       	callq  400e10 <exit@plt>

00000000004017a6 <hexmatch>:
  4017a6:	41 54                	push   %r12
  4017a8:	55                   	push   %rbp
  4017a9:	53                   	push   %rbx
  4017aa:	48 83 ec 70          	sub    $0x70,%rsp
  4017ae:	41 89 fc             	mov    %edi,%r12d
  4017b1:	48 89 f5             	mov    %rsi,%rbp
  4017b4:	e8 b7 f5 ff ff       	callq  400d70 <random@plt>
  4017b9:	48 89 c1             	mov    %rax,%rcx
  4017bc:	48 ba 0b d7 a3 70 3d 	mov    $0xa3d70a3d70a3d70b,%rdx
  4017c3:	0a d7 a3 
  4017c6:	48 f7 ea             	imul   %rdx
  4017c9:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  4017cd:	48 c1 f8 06          	sar    $0x6,%rax
  4017d1:	48 89 ce             	mov    %rcx,%rsi
  4017d4:	48 c1 fe 3f          	sar    $0x3f,%rsi
  4017d8:	48 29 f0             	sub    %rsi,%rax
  4017db:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4017df:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4017e3:	48 c1 e0 02          	shl    $0x2,%rax
  4017e7:	48 29 c1             	sub    %rax,%rcx
  4017ea:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  4017ee:	44 89 e2             	mov    %r12d,%edx
  4017f1:	be 3c 31 40 00       	mov    $0x40313c,%esi
  4017f6:	48 89 df             	mov    %rbx,%rdi
  4017f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4017fe:	e8 fd f5 ff ff       	callq  400e00 <sprintf@plt>
  401803:	ba 09 00 00 00       	mov    $0x9,%edx
  401808:	48 89 de             	mov    %rbx,%rsi
  40180b:	48 89 ef             	mov    %rbp,%rdi
  40180e:	e8 3d f4 ff ff       	callq  400c50 <strncmp@plt>
  401813:	85 c0                	test   %eax,%eax
  401815:	0f 94 c0             	sete   %al
  401818:	0f b6 c0             	movzbl %al,%eax
  40181b:	48 83 c4 70          	add    $0x70,%rsp
  40181f:	5b                   	pop    %rbx
  401820:	5d                   	pop    %rbp
  401821:	41 5c                	pop    %r12
  401823:	c3                   	retq   

0000000000401824 <touch3>:
  401824:	53                   	push   %rbx
  401825:	48 89 fb             	mov    %rdi,%rbx
  401828:	c7 05 ca 3c 20 00 03 	movl   $0x3,0x203cca(%rip)        # 6054fc <vlevel>
  40182f:	00 00 00 
  401832:	48 89 fe             	mov    %rdi,%rsi
  401835:	8b 3d c9 3c 20 00    	mov    0x203cc9(%rip),%edi        # 605504 <cookie>
  40183b:	e8 66 ff ff ff       	callq  4017a6 <hexmatch>
  401840:	85 c0                	test   %eax,%eax
  401842:	74 1e                	je     401862 <touch3+0x3e>
  401844:	48 89 de             	mov    %rbx,%rsi
  401847:	bf 98 31 40 00       	mov    $0x403198,%edi
  40184c:	b8 00 00 00 00       	mov    $0x0,%eax
  401851:	e8 4a f4 ff ff       	callq  400ca0 <printf@plt>
  401856:	bf 03 00 00 00       	mov    $0x3,%edi
  40185b:	e8 f9 03 00 00       	callq  401c59 <validate>
  401860:	eb 1c                	jmp    40187e <touch3+0x5a>
  401862:	48 89 de             	mov    %rbx,%rsi
  401865:	bf c0 31 40 00       	mov    $0x4031c0,%edi
  40186a:	b8 00 00 00 00       	mov    $0x0,%eax
  40186f:	e8 2c f4 ff ff       	callq  400ca0 <printf@plt>
  401874:	bf 03 00 00 00       	mov    $0x3,%edi
  401879:	e8 8d 04 00 00       	callq  401d0b <fail>
  40187e:	bf 00 00 00 00       	mov    $0x0,%edi
  401883:	e8 88 f5 ff ff       	callq  400e10 <exit@plt>

0000000000401888 <test>:
  401888:	48 83 ec 08          	sub    $0x8,%rsp
  40188c:	b8 00 00 00 00       	mov    $0x0,%eax
  401891:	e8 76 fe ff ff       	callq  40170c <getbuf>
  401896:	89 c6                	mov    %eax,%esi
  401898:	bf e8 31 40 00       	mov    $0x4031e8,%edi
  40189d:	b8 00 00 00 00       	mov    $0x0,%eax
  4018a2:	e8 f9 f3 ff ff       	callq  400ca0 <printf@plt>
  4018a7:	48 83 c4 08          	add    $0x8,%rsp
  4018ab:	c3                   	retq   

00000000004018ac <start_farm>:
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	c3                   	retq   

end_farm>:
  4019c8:	b8 01 00 00 00       	mov    $0x1,%eax
  4019cd:	c3                   	retq   
  4019ce:	66 90                	xchg   %ax,%ax

00000000004019d0 <save_char>:
  4019d0:	8b 05 4e 47 20 00    	mov    0x20474e(%rip),%eax        # 606124 <gets_cnt>
  4019d6:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4019db:	7f 49                	jg     401a26 <save_char+0x56>
  4019dd:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4019e0:	89 f9                	mov    %edi,%ecx
  4019e2:	c0 e9 04             	shr    $0x4,%cl
  4019e5:	83 e1 0f             	and    $0xf,%ecx
  4019e8:	0f b6 b1 10 35 40 00 	movzbl 0x403510(%rcx),%esi
  4019ef:	48 63 ca             	movslq %edx,%rcx
  4019f2:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  4019f9:	8d 4a 01             	lea    0x1(%rdx),%ecx
  4019fc:	83 e7 0f             	and    $0xf,%edi
  4019ff:	0f b6 b7 10 35 40 00 	movzbl 0x403510(%rdi),%esi
  401a06:	48 63 c9             	movslq %ecx,%rcx
  401a09:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401a10:	83 c2 02             	add    $0x2,%edx
  401a13:	48 63 d2             	movslq %edx,%rdx
  401a16:	c6 82 20 55 60 00 20 	movb   $0x20,0x605520(%rdx)
  401a1d:	83 c0 01             	add    $0x1,%eax
  401a20:	89 05 fe 46 20 00    	mov    %eax,0x2046fe(%rip)        # 606124 <gets_cnt>
  401a26:	f3 c3                	repz retq 

0000000000401a28 <save_term>:
  401a28:	8b 05 f6 46 20 00    	mov    0x2046f6(%rip),%eax        # 606124 <gets_cnt>
  401a2e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401a31:	48 98                	cltq   
  401a33:	c6 80 20 55 60 00 00 	movb   $0x0,0x605520(%rax)
  401a3a:	c3                   	retq   

0000000000401a3b <check_fail>:
  401a3b:	48 83 ec 08          	sub    $0x8,%rsp
  401a3f:	0f be 35 e2 46 20 00 	movsbl 0x2046e2(%rip),%esi        # 606128 <target_prefix>
  401a46:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401a4b:	8b 15 a7 3a 20 00    	mov    0x203aa7(%rip),%edx        # 6054f8 <check_level>
  401a51:	bf 0b 32 40 00       	mov    $0x40320b,%edi
  401a56:	b8 00 00 00 00       	mov    $0x0,%eax
  401a5b:	e8 40 f2 ff ff       	callq  400ca0 <printf@plt>
  401a60:	bf 01 00 00 00       	mov    $0x1,%edi
  401a65:	e8 a6 f3 ff ff       	callq  400e10 <exit@plt>

0000000000401a6a <Gets>:
  401a6a:	41 54                	push   %r12
  401a6c:	55                   	push   %rbp
  401a6d:	53                   	push   %rbx
  401a6e:	49 89 fc             	mov    %rdi,%r12
  401a71:	c7 05 a9 46 20 00 00 	movl   $0x0,0x2046a9(%rip)        # 606124 <gets_cnt>
  401a78:	00 00 00 
  401a7b:	48 89 fb             	mov    %rdi,%rbx
  401a7e:	eb 11                	jmp    401a91 <Gets+0x27>
  401a80:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401a84:	88 03                	mov    %al,(%rbx)
  401a86:	0f b6 f8             	movzbl %al,%edi
  401a89:	e8 42 ff ff ff       	callq  4019d0 <save_char>
  401a8e:	48 89 eb             	mov    %rbp,%rbx
  401a91:	48 8b 3d 58 3a 20 00 	mov    0x203a58(%rip),%rdi        # 6054f0 <infile>
  401a98:	e8 e3 f2 ff ff       	callq  400d80 <_IO_getc@plt>
  401a9d:	83 f8 ff             	cmp    $0xffffffffffffffff,%eax
  401aa0:	74 05                	je     401aa7 <Gets+0x3d>
  401aa2:	83 f8 0a             	cmp    $0xa,%eax
  401aa5:	75 d9                	jne    401a80 <Gets+0x16>
  401aa7:	c6 03 00             	movb   $0x0,(%rbx)
  401aaa:	b8 00 00 00 00       	mov    $0x0,%eax
  401aaf:	e8 74 ff ff ff       	callq  401a28 <save_term>
  401ab4:	4c 89 e0             	mov    %r12,%rax
  401ab7:	5b                   	pop    %rbx
  401ab8:	5d                   	pop    %rbp
  401ab9:	41 5c                	pop    %r12
  401abb:	c3                   	retq   

0000000000401abc <notify_server>:
  401abc:	83 3d 45 3a 20 00 00 	cmpl   $0x0,0x203a45(%rip)        # 605508 <is_checker>
  401ac3:	0f 85 8e 01 00 00    	jne    401c57 <notify_server+0x19b>
  401ac9:	53                   	push   %rbx
  401aca:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401ad1:	89 fb                	mov    %edi,%ebx
  401ad3:	8b 05 4b 46 20 00    	mov    0x20464b(%rip),%eax        # 606124 <gets_cnt>
  401ad9:	83 c0 64             	add    $0x64,%eax
  401adc:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401ae1:	7e 19                	jle    401afc <notify_server+0x40>
  401ae3:	bf 40 33 40 00       	mov    $0x403340,%edi
  401ae8:	b8 00 00 00 00       	mov    $0x0,%eax
  401aed:	e8 ae f1 ff ff       	callq  400ca0 <printf@plt>
  401af2:	bf 01 00 00 00       	mov    $0x1,%edi
  401af7:	e8 14 f3 ff ff       	callq  400e10 <exit@plt>
  401afc:	44 0f be 0d 24 46 20 	movsbl 0x204624(%rip),%r9d        # 606128 <target_prefix>
  401b03:	00 
  401b04:	83 3d 9d 39 20 00 00 	cmpl   $0x0,0x20399d(%rip)        # 6054a8 <notify>
  401b0b:	74 09                	je     401b16 <notify_server+0x5a>
  401b0d:	44 8b 05 ec 39 20 00 	mov    0x2039ec(%rip),%r8d        # 605500 <authkey>
  401b14:	eb 06                	jmp    401b1c <notify_server+0x60>
  401b16:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401b1c:	85 db                	test   %ebx,%ebx
  401b1e:	74 07                	je     401b27 <notify_server+0x6b>
  401b20:	b9 21 32 40 00       	mov    $0x403221,%ecx
  401b25:	eb 05                	jmp    401b2c <notify_server+0x70>
  401b27:	b9 26 32 40 00       	mov    $0x403226,%ecx
  401b2c:	48 c7 44 24 08 20 55 	movq   $0x605520,0x8(%rsp)
  401b33:	60 00 
  401b35:	89 34 24             	mov    %esi,(%rsp)
  401b38:	8b 15 2a 36 20 00    	mov    0x20362a(%rip),%edx        # 605168 <target_id>
  401b3e:	be 2b 32 40 00       	mov    $0x40322b,%esi
  401b43:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401b4a:	00 
  401b4b:	b8 00 00 00 00       	mov    $0x0,%eax
  401b50:	e8 ab f2 ff ff       	callq  400e00 <sprintf@plt>
  401b55:	83 3d 4c 39 20 00 00 	cmpl   $0x0,0x20394c(%rip)        # 6054a8 <notify>
  401b5c:	74 78                	je     401bd6 <notify_server+0x11a>
  401b5e:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401b63:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401b69:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401b70:	00 
  401b71:	48 8b 15 f8 35 20 00 	mov    0x2035f8(%rip),%rdx        # 605170 <lab>
  401b78:	48 8b 35 f9 35 20 00 	mov    0x2035f9(%rip),%rsi        # 605178 <course>
  401b7f:	48 8b 3d da 35 20 00 	mov    0x2035da(%rip),%rdi        # 605160 <user_id>
  401b86:	e8 b3 0f 00 00       	callq  402b3e <driver_post>
  401b8b:	85 c0                	test   %eax,%eax
  401b8d:	79 1e                	jns    401bad <notify_server+0xf1>
  401b8f:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401b94:	bf 47 32 40 00       	mov    $0x403247,%edi
  401b99:	b8 00 00 00 00       	mov    $0x0,%eax
  401b9e:	e8 fd f0 ff ff       	callq  400ca0 <printf@plt>
  401ba3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ba8:	e8 63 f2 ff ff       	callq  400e10 <exit@plt>
  401bad:	85 db                	test   %ebx,%ebx
  401baf:	74 19                	je     401bca <notify_server+0x10e>
  401bb1:	bf 70 33 40 00       	mov    $0x403370,%edi
  401bb6:	e8 b5 f0 ff ff       	callq  400c70 <puts@plt>
  401bbb:	bf 53 32 40 00       	mov    $0x403253,%edi
  401bc0:	e8 ab f0 ff ff       	callq  400c70 <puts@plt>
  401bc5:	e9 85 00 00 00       	jmpq   401c4f <notify_server+0x193>
  401bca:	bf 5d 32 40 00       	mov    $0x40325d,%edi
  401bcf:	e8 9c f0 ff ff       	callq  400c70 <puts@plt>
  401bd4:	eb 79                	jmp    401c4f <notify_server+0x193>
  401bd6:	85 db                	test   %ebx,%ebx
  401bd8:	74 08                	je     401be2 <notify_server+0x126>
  401bda:	be 21 32 40 00       	mov    $0x403221,%esi
  401bdf:	90                   	nop
  401be0:	eb 05                	jmp    401be7 <notify_server+0x12b>
  401be2:	be 26 32 40 00       	mov    $0x403226,%esi
  401be7:	bf a8 33 40 00       	mov    $0x4033a8,%edi
  401bec:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf1:	e8 aa f0 ff ff       	callq  400ca0 <printf@plt>
  401bf6:	48 8b 35 63 35 20 00 	mov    0x203563(%rip),%rsi        # 605160 <user_id>
  401bfd:	bf 64 32 40 00       	mov    $0x403264,%edi
  401c02:	b8 00 00 00 00       	mov    $0x0,%eax
  401c07:	e8 94 f0 ff ff       	callq  400ca0 <printf@plt>
  401c0c:	48 8b 35 65 35 20 00 	mov    0x203565(%rip),%rsi        # 605178 <course>
  401c13:	bf 71 32 40 00       	mov    $0x403271,%edi
  401c18:	b8 00 00 00 00       	mov    $0x0,%eax
  401c1d:	e8 7e f0 ff ff       	callq  400ca0 <printf@plt>
  401c22:	48 8b 35 47 35 20 00 	mov    0x203547(%rip),%rsi        # 605170 <lab>
  401c29:	bf 7d 32 40 00       	mov    $0x40327d,%edi
  401c2e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c33:	e8 68 f0 ff ff       	callq  400ca0 <printf@plt>
  401c38:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401c3f:	00 
  401c40:	bf 86 32 40 00       	mov    $0x403286,%edi
  401c45:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4a:	e8 51 f0 ff ff       	callq  400ca0 <printf@plt>
  401c4f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401c56:	5b                   	pop    %rbx
  401c57:	f3 c3                	repz retq 

0000000000401c59 <validate>:
  401c59:	53                   	push   %rbx
  401c5a:	89 fb                	mov    %edi,%ebx
  401c5c:	83 3d a5 38 20 00 00 	cmpl   $0x0,0x2038a5(%rip)        # 605508 <is_checker>
  401c63:	74 60                	je     401cc5 <validate+0x6c>
  401c65:	39 3d 91 38 20 00    	cmp    %edi,0x203891(%rip)        # 6054fc <vlevel>
  401c6b:	74 14                	je     401c81 <validate+0x28>
  401c6d:	bf 92 32 40 00       	mov    $0x403292,%edi
  401c72:	e8 f9 ef ff ff       	callq  400c70 <puts@plt>
  401c77:	b8 00 00 00 00       	mov    $0x0,%eax
  401c7c:	e8 ba fd ff ff       	callq  401a3b <check_fail>
  401c81:	8b 35 71 38 20 00    	mov    0x203871(%rip),%esi        # 6054f8 <check_level>
  401c87:	39 fe                	cmp    %edi,%esi
  401c89:	74 1b                	je     401ca6 <validate+0x4d>
  401c8b:	89 fa                	mov    %edi,%edx
  401c8d:	bf d0 33 40 00       	mov    $0x4033d0,%edi
  401c92:	b8 00 00 00 00       	mov    $0x0,%eax
  401c97:	e8 04 f0 ff ff       	callq  400ca0 <printf@plt>
  401c9c:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca1:	e8 95 fd ff ff       	callq  401a3b <check_fail>
  401ca6:	0f be 35 7b 44 20 00 	movsbl 0x20447b(%rip),%esi        # 606128 <target_prefix>
  401cad:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401cb2:	89 fa                	mov    %edi,%edx
  401cb4:	bf b0 32 40 00       	mov    $0x4032b0,%edi
  401cb9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cbe:	e8 dd ef ff ff       	callq  400ca0 <printf@plt>
  401cc3:	eb 44                	jmp    401d09 <validate+0xb0>
  401cc5:	39 3d 31 38 20 00    	cmp    %edi,0x203831(%rip)        # 6054fc <vlevel>
  401ccb:	74 18                	je     401ce5 <validate+0x8c>
  401ccd:	bf 92 32 40 00       	mov    $0x403292,%edi
  401cd2:	e8 99 ef ff ff       	callq  400c70 <puts@plt>
  401cd7:	89 de                	mov    %ebx,%esi
  401cd9:	bf 00 00 00 00       	mov    $0x0,%edi
  401cde:	e8 d9 fd ff ff       	callq  401abc <notify_server>
  401ce3:	eb 24                	jmp    401d09 <validate+0xb0>
  401ce5:	0f be 15 3c 44 20 00 	movsbl 0x20443c(%rip),%edx        # 606128 <target_prefix>
  401cec:	89 fe                	mov    %edi,%esi
  401cee:	bf f8 33 40 00       	mov    $0x4033f8,%edi
  401cf3:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf8:	e8 a3 ef ff ff       	callq  400ca0 <printf@plt>
  401cfd:	89 de                	mov    %ebx,%esi
  401cff:	bf 01 00 00 00       	mov    $0x1,%edi
  401d04:	e8 b3 fd ff ff       	callq  401abc <notify_server>
  401d09:	5b                   	pop    %rbx
  401d0a:	c3                   	retq   

0000000000401d0b <fail>:
  401d0b:	48 83 ec 08          	sub    $0x8,%rsp
  401d0f:	83 3d f2 37 20 00 00 	cmpl   $0x0,0x2037f2(%rip)        # 605508 <is_checker>
  401d16:	74 0a                	je     401d22 <fail+0x17>
  401d18:	b8 00 00 00 00       	mov    $0x0,%eax
  401d1d:	e8 19 fd ff ff       	callq  401a3b <check_fail>
  401d22:	89 fe                	mov    %edi,%esi
  401d24:	bf 00 00 00 00       	mov    $0x0,%edi
  401d29:	e8 8e fd ff ff       	callq  401abc <notify_server>
  401d2e:	48 83 c4 08          	add    $0x8,%rsp
  401d32:	c3                   	retq   

0000000000401d33 <bushandler>:
  401d33:	48 83 ec 08          	sub    $0x8,%rsp
  401d37:	83 3d ca 37 20 00 00 	cmpl   $0x0,0x2037ca(%rip)        # 605508 <is_checker>
  401d3e:	74 14                	je     401d54 <bushandler+0x21>
  401d40:	bf c5 32 40 00       	mov    $0x4032c5,%edi
  401d45:	e8 26 ef ff ff       	callq  400c70 <puts@plt>
  401d4a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4f:	e8 e7 fc ff ff       	callq  401a3b <check_fail>
  401d54:	bf 30 34 40 00       	mov    $0x403430,%edi
  401d59:	e8 12 ef ff ff       	callq  400c70 <puts@plt>
  401d5e:	bf cf 32 40 00       	mov    $0x4032cf,%edi
  401d63:	e8 08 ef ff ff       	callq  400c70 <puts@plt>
  401d68:	be 00 00 00 00       	mov    $0x0,%esi
  401d6d:	bf 00 00 00 00       	mov    $0x0,%edi
  401d72:	e8 45 fd ff ff       	callq  401abc <notify_server>
  401d77:	bf 01 00 00 00       	mov    $0x1,%edi
  401d7c:	e8 8f f0 ff ff       	callq  400e10 <exit@plt>

0000000000401d81 <seghandler>:
  401d81:	48 83 ec 08          	sub    $0x8,%rsp
  401d85:	83 3d 7c 37 20 00 00 	cmpl   $0x0,0x20377c(%rip)        # 605508 <is_checker>
  401d8c:	74 14                	je     401da2 <seghandler+0x21>
  401d8e:	bf e5 32 40 00       	mov    $0x4032e5,%edi
  401d93:	e8 d8 ee ff ff       	callq  400c70 <puts@plt>
  401d98:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9d:	e8 99 fc ff ff       	callq  401a3b <check_fail>
  401da2:	bf 50 34 40 00       	mov    $0x403450,%edi
  401da7:	e8 c4 ee ff ff       	callq  400c70 <puts@plt>
  401dac:	bf cf 32 40 00       	mov    $0x4032cf,%edi
  401db1:	e8 ba ee ff ff       	callq  400c70 <puts@plt>
  401db6:	be 00 00 00 00       	mov    $0x0,%esi
  401dbb:	bf 00 00 00 00       	mov    $0x0,%edi
  401dc0:	e8 f7 fc ff ff       	callq  401abc <notify_server>
  401dc5:	bf 01 00 00 00       	mov    $0x1,%edi
  401dca:	e8 41 f0 ff ff       	callq  400e10 <exit@plt>

0000000000401dcf <illegalhandler>:
  401dcf:	48 83 ec 08          	sub    $0x8,%rsp
  401dd3:	83 3d 2e 37 20 00 00 	cmpl   $0x0,0x20372e(%rip)        # 605508 <is_checker>
  401dda:	74 14                	je     401df0 <illegalhandler+0x21>
  401ddc:	bf f8 32 40 00       	mov    $0x4032f8,%edi
  401de1:	e8 8a ee ff ff       	callq  400c70 <puts@plt>
  401de6:	b8 00 00 00 00       	mov    $0x0,%eax
  401deb:	e8 4b fc ff ff       	callq  401a3b <check_fail>
  401df0:	bf 78 34 40 00       	mov    $0x403478,%edi
  401df5:	e8 76 ee ff ff       	callq  400c70 <puts@plt>
  401dfa:	bf cf 32 40 00       	mov    $0x4032cf,%edi
  401dff:	e8 6c ee ff ff       	callq  400c70 <puts@plt>
  401e04:	be 00 00 00 00       	mov    $0x0,%esi
  401e09:	bf 00 00 00 00       	mov    $0x0,%edi
  401e0e:	e8 a9 fc ff ff       	callq  401abc <notify_server>
  401e13:	bf 01 00 00 00       	mov    $0x1,%edi
  401e18:	e8 f3 ef ff ff       	callq  400e10 <exit@plt>

0000000000401e1d <sigalrmhandler>:
  401e1d:	48 83 ec 08          	sub    $0x8,%rsp
  401e21:	83 3d e0 36 20 00 00 	cmpl   $0x0,0x2036e0(%rip)        # 605508 <is_checker>
  401e28:	74 14                	je     401e3e <sigalrmhandler+0x21>
  401e2a:	bf 0c 33 40 00       	mov    $0x40330c,%edi
  401e2f:	e8 3c ee ff ff       	callq  400c70 <puts@plt>
  401e34:	b8 00 00 00 00       	mov    $0x0,%eax
  401e39:	e8 fd fb ff ff       	callq  401a3b <check_fail>
  401e3e:	be 05 00 00 00       	mov    $0x5,%esi
  401e43:	bf a8 34 40 00       	mov    $0x4034a8,%edi
  401e48:	b8 00 00 00 00       	mov    $0x0,%eax
  401e4d:	e8 4e ee ff ff       	callq  400ca0 <printf@plt>
  401e52:	be 00 00 00 00       	mov    $0x0,%esi
  401e57:	bf 00 00 00 00       	mov    $0x0,%edi
  401e5c:	e8 5b fc ff ff       	callq  401abc <notify_server>
  401e61:	bf 01 00 00 00       	mov    $0x1,%edi
  401e66:	e8 a5 ef ff ff       	callq  400e10 <exit@plt>

0000000000401e6b <launch>:
  401e6b:	55                   	push   %rbp
  401e6c:	48 89 e5             	mov    %rsp,%rbp
  401e6f:	48 89 fa             	mov    %rdi,%rdx
  401e72:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401e76:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401e7a:	48 29 c4             	sub    %rax,%rsp
  401e7d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401e82:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401e86:	be f4 00 00 00       	mov    $0xf4,%esi
  401e8b:	e8 20 ee ff ff       	callq  400cb0 <memset@plt>
  401e90:	48 8b 05 29 36 20 00 	mov    0x203629(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401e97:	48 39 05 52 36 20 00 	cmp    %rax,0x203652(%rip)        # 6054f0 <infile>
  401e9e:	75 0f                	jne    401eaf <launch+0x44>
  401ea0:	bf 14 33 40 00       	mov    $0x403314,%edi
  401ea5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eaa:	e8 f1 ed ff ff       	callq  400ca0 <printf@plt>
  401eaf:	c7 05 43 36 20 00 00 	movl   $0x0,0x203643(%rip)        # 6054fc <vlevel>
  401eb6:	00 00 00 
  401eb9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebe:	e8 c5 f9 ff ff       	callq  401888 <test>
  401ec3:	83 3d 3e 36 20 00 00 	cmpl   $0x0,0x20363e(%rip)        # 605508 <is_checker>
  401eca:	74 14                	je     401ee0 <launch+0x75>
  401ecc:	bf 21 33 40 00       	mov    $0x403321,%edi
  401ed1:	e8 9a ed ff ff       	callq  400c70 <puts@plt>
  401ed6:	b8 00 00 00 00       	mov    $0x0,%eax
  401edb:	e8 5b fb ff ff       	callq  401a3b <check_fail>
  401ee0:	bf 2c 33 40 00       	mov    $0x40332c,%edi
  401ee5:	e8 86 ed ff ff       	callq  400c70 <puts@plt>
  401eea:	c9                   	leaveq 
  401eeb:	c3                   	retq   

0000000000401eec <stable_launch>:
  401eec:	53                   	push   %rbx
  401eed:	48 89 3d f4 35 20 00 	mov    %rdi,0x2035f4(%rip)        # 6054e8 <global_offset>
  401ef4:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401efa:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f00:	b9 32 01 00 00       	mov    $0x132,%ecx
  401f05:	ba 07 00 00 00       	mov    $0x7,%edx
  401f0a:	be 00 00 10 00       	mov    $0x100000,%esi
  401f0f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401f14:	e8 77 ed ff ff       	callq  400c90 <mmap@plt>
  401f19:	48 89 c3             	mov    %rax,%rbx
  401f1c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401f22:	74 32                	je     401f56 <stable_launch+0x6a>
  401f24:	be 00 00 10 00       	mov    $0x100000,%esi
  401f29:	48 89 c7             	mov    %rax,%rdi
  401f2c:	e8 6f ee ff ff       	callq  400da0 <munmap@plt>
  401f31:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401f36:	be e0 34 40 00       	mov    $0x4034e0,%esi
  401f3b:	48 8b 3d 8e 35 20 00 	mov    0x20358e(%rip),%rdi        # 6054d0 <stderr@@GLIBC_2.2.5>
  401f42:	b8 00 00 00 00       	mov    $0x0,%eax
  401f47:	e8 d4 ed ff ff       	callq  400d20 <fprintf@plt>
  401f4c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f51:	e8 ba ee ff ff       	callq  400e10 <exit@plt>
  401f56:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401f5d:	48 89 15 cc 41 20 00 	mov    %rdx,0x2041cc(%rip)        # 606130 <stack_top>
  401f64:	48 89 e0             	mov    %rsp,%rax
  401f67:	48 89 d4             	mov    %rdx,%rsp
  401f6a:	48 89 c2             	mov    %rax,%rdx
  401f6d:	48 89 15 6c 35 20 00 	mov    %rdx,0x20356c(%rip)        # 6054e0 <global_save_stack>
  401f74:	48 8b 3d 6d 35 20 00 	mov    0x20356d(%rip),%rdi        # 6054e8 <global_offset>
  401f7b:	e8 eb fe ff ff       	callq  401e6b <launch>
  401f80:	48 8b 05 59 35 20 00 	mov    0x203559(%rip),%rax        # 6054e0 <global_save_stack>
  401f87:	48 89 c4             	mov    %rax,%rsp
  401f8a:	be 00 00 10 00       	mov    $0x100000,%esi
  401f8f:	48 89 df             	mov    %rbx,%rdi
  401f92:	e8 09 ee ff ff       	callq  400da0 <munmap@plt>
  401f97:	5b                   	pop    %rbx
  401f98:	c3                   	retq   
  401f99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401fa0 <rio_readinitb>:
  401fa0:	89 37                	mov    %esi,(%rdi)
  401fa2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401fa9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401fad:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401fb1:	c3                   	retq   

0000000000401fb2 <sigalrm_handler>:
  401fb2:	48 83 ec 08          	sub    $0x8,%rsp
  401fb6:	ba 00 00 00 00       	mov    $0x0,%edx
  401fbb:	be 20 35 40 00       	mov    $0x403520,%esi
  401fc0:	48 8b 3d 09 35 20 00 	mov    0x203509(%rip),%rdi        # 6054d0 <stderr@@GLIBC_2.2.5>
  401fc7:	b8 00 00 00 00       	mov    $0x0,%eax
  401fcc:	e8 4f ed ff ff       	callq  400d20 <fprintf@plt>
  401fd1:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd6:	e8 35 ee ff ff       	callq  400e10 <exit@plt>

0000000000401fdb <urlencode>:
  401fdb:	41 54                	push   %r12
  401fdd:	55                   	push   %rbp
  401fde:	53                   	push   %rbx
  401fdf:	48 83 ec 10          	sub    $0x10,%rsp
  401fe3:	48 89 fb             	mov    %rdi,%rbx
  401fe6:	48 89 f5             	mov    %rsi,%rbp
  401fe9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fee:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401ff5:	f2 ae                	repnz scas %es:(%rdi),%al
  401ff7:	48 f7 d1             	not    %rcx
  401ffa:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401ffd:	e9 93 00 00 00       	jmpq   402095 <urlencode+0xba>
  402002:	0f b6 13             	movzbl (%rbx),%edx
  402005:	80 fa 2a             	cmp    $0x2a,%dl
  402008:	0f 94 c1             	sete   %cl
  40200b:	80 fa 2d             	cmp    $0x2d,%dl
  40200e:	0f 94 c0             	sete   %al
  402011:	08 c1                	or     %al,%cl
  402013:	75 1f                	jne    402034 <urlencode+0x59>
  402015:	80 fa 2e             	cmp    $0x2e,%dl
  402018:	74 1a                	je     402034 <urlencode+0x59>
  40201a:	80 fa 5f             	cmp    $0x5f,%dl
  40201d:	74 15                	je     402034 <urlencode+0x59>
  40201f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402022:	3c 09                	cmp    $0x9,%al
  402024:	76 0e                	jbe    402034 <urlencode+0x59>
  402026:	8d 42 bf             	lea    -0x41(%rdx),%eax
  402029:	3c 19                	cmp    $0x19,%al
  40202b:	76 07                	jbe    402034 <urlencode+0x59>
  40202d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402030:	3c 19                	cmp    $0x19,%al
  402032:	77 09                	ja     40203d <urlencode+0x62>
  402034:	88 55 00             	mov    %dl,0x0(%rbp)
  402037:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40203b:	eb 51                	jmp    40208e <urlencode+0xb3>
  40203d:	80 fa 20             	cmp    $0x20,%dl
  402040:	75 0a                	jne    40204c <urlencode+0x71>
  402042:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402046:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40204a:	eb 42                	jmp    40208e <urlencode+0xb3>
  40204c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  40204f:	3c 5f                	cmp    $0x5f,%al
  402051:	0f 96 c1             	setbe  %cl
  402054:	80 fa 09             	cmp    $0x9,%dl
  402057:	0f 94 c0             	sete   %al
  40205a:	08 c1                	or     %al,%cl
  40205c:	74 45                	je     4020a3 <urlencode+0xc8>
  40205e:	0f b6 d2             	movzbl %dl,%edx
  402061:	be d8 35 40 00       	mov    $0x4035d8,%esi
  402066:	48 89 e7             	mov    %rsp,%rdi
  402069:	b8 00 00 00 00       	mov    $0x0,%eax
  40206e:	e8 8d ed ff ff       	callq  400e00 <sprintf@plt>
  402073:	0f b6 04 24          	movzbl (%rsp),%eax
  402077:	88 45 00             	mov    %al,0x0(%rbp)
  40207a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40207f:	88 45 01             	mov    %al,0x1(%rbp)
  402082:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402087:	88 45 02             	mov    %al,0x2(%rbp)
  40208a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40208e:	48 83 c3 01          	add    $0x1,%rbx
  402092:	44 89 e0             	mov    %r12d,%eax
  402095:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402099:	85 c0                	test   %eax,%eax
  40209b:	0f 85 61 ff ff ff    	jne    402002 <urlencode+0x27>
  4020a1:	eb 05                	jmp    4020a8 <urlencode+0xcd>
  4020a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020a8:	48 83 c4 10          	add    $0x10,%rsp
  4020ac:	5b                   	pop    %rbx
  4020ad:	5d                   	pop    %rbp
  4020ae:	41 5c                	pop    %r12
  4020b0:	c3                   	retq   

00000000004020b1 <rio_writen>:
  4020b1:	41 55                	push   %r13
  4020b3:	41 54                	push   %r12
  4020b5:	55                   	push   %rbp
  4020b6:	53                   	push   %rbx
  4020b7:	48 83 ec 08          	sub    $0x8,%rsp
  4020bb:	41 89 fc             	mov    %edi,%r12d
  4020be:	48 89 f5             	mov    %rsi,%rbp
  4020c1:	49 89 d5             	mov    %rdx,%r13
  4020c4:	48 89 d3             	mov    %rdx,%rbx
  4020c7:	eb 28                	jmp    4020f1 <rio_writen+0x40>
  4020c9:	48 89 da             	mov    %rbx,%rdx
  4020cc:	48 89 ee             	mov    %rbp,%rsi
  4020cf:	44 89 e7             	mov    %r12d,%edi
  4020d2:	e8 a9 eb ff ff       	callq  400c80 <write@plt>
  4020d7:	48 85 c0             	test   %rax,%rax
  4020da:	7f 0f                	jg     4020eb <rio_writen+0x3a>
  4020dc:	e8 4f eb ff ff       	callq  400c30 <__errno_location@plt>
  4020e1:	83 38 04             	cmpl   $0x4,(%rax)
  4020e4:	75 15                	jne    4020fb <rio_writen+0x4a>
  4020e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020eb:	48 29 c3             	sub    %rax,%rbx
  4020ee:	48 01 c5             	add    %rax,%rbp
  4020f1:	48 85 db             	test   %rbx,%rbx
  4020f4:	75 d3                	jne    4020c9 <rio_writen+0x18>
  4020f6:	4c 89 e8             	mov    %r13,%rax
  4020f9:	eb 07                	jmp    402102 <rio_writen+0x51>
  4020fb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402102:	48 83 c4 08          	add    $0x8,%rsp
  402106:	5b                   	pop    %rbx
  402107:	5d                   	pop    %rbp
  402108:	41 5c                	pop    %r12
  40210a:	41 5d                	pop    %r13
  40210c:	c3                   	retq   

000000000040210d <rio_read>:
  40210d:	41 56                	push   %r14
  40210f:	41 55                	push   %r13
  402111:	41 54                	push   %r12
  402113:	55                   	push   %rbp
  402114:	53                   	push   %rbx
  402115:	48 89 fb             	mov    %rdi,%rbx
  402118:	49 89 f6             	mov    %rsi,%r14
  40211b:	49 89 d5             	mov    %rdx,%r13
  40211e:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  402122:	eb 2a                	jmp    40214e <rio_read+0x41>
  402124:	ba 00 20 00 00       	mov    $0x2000,%edx
  402129:	4c 89 e6             	mov    %r12,%rsi
  40212c:	8b 3b                	mov    (%rbx),%edi
  40212e:	e8 ad eb ff ff       	callq  400ce0 <read@plt>
  402133:	89 43 04             	mov    %eax,0x4(%rbx)
  402136:	85 c0                	test   %eax,%eax
  402138:	79 0c                	jns    402146 <rio_read+0x39>
  40213a:	e8 f1 ea ff ff       	callq  400c30 <__errno_location@plt>
  40213f:	83 38 04             	cmpl   $0x4,(%rax)
  402142:	74 0a                	je     40214e <rio_read+0x41>
  402144:	eb 37                	jmp    40217d <rio_read+0x70>
  402146:	85 c0                	test   %eax,%eax
  402148:	74 3c                	je     402186 <rio_read+0x79>
  40214a:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  40214e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402151:	85 ed                	test   %ebp,%ebp
  402153:	7e cf                	jle    402124 <rio_read+0x17>
  402155:	89 e8                	mov    %ebp,%eax
  402157:	4c 39 e8             	cmp    %r13,%rax
  40215a:	72 03                	jb     40215f <rio_read+0x52>
  40215c:	44 89 ed             	mov    %r13d,%ebp
  40215f:	4c 63 e5             	movslq %ebp,%r12
  402162:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402166:	4c 89 e2             	mov    %r12,%rdx
  402169:	4c 89 f7             	mov    %r14,%rdi
  40216c:	e8 df eb ff ff       	callq  400d50 <memcpy@plt>
  402171:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402175:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402178:	4c 89 e0             	mov    %r12,%rax
  40217b:	eb 0e                	jmp    40218b <rio_read+0x7e>
  40217d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402184:	eb 05                	jmp    40218b <rio_read+0x7e>
  402186:	b8 00 00 00 00       	mov    $0x0,%eax
  40218b:	5b                   	pop    %rbx
  40218c:	5d                   	pop    %rbp
  40218d:	41 5c                	pop    %r12
  40218f:	41 5d                	pop    %r13
  402191:	41 5e                	pop    %r14
  402193:	c3                   	retq   

0000000000402194 <rio_readlineb>:
  402194:	41 55                	push   %r13
  402196:	41 54                	push   %r12
  402198:	55                   	push   %rbp
  402199:	53                   	push   %rbx
  40219a:	48 83 ec 18          	sub    $0x18,%rsp
  40219e:	49 89 fd             	mov    %rdi,%r13
  4021a1:	48 89 f5             	mov    %rsi,%rbp
  4021a4:	49 89 d4             	mov    %rdx,%r12
  4021a7:	bb 01 00 00 00       	mov    $0x1,%ebx
  4021ac:	eb 3d                	jmp    4021eb <rio_readlineb+0x57>
  4021ae:	ba 01 00 00 00       	mov    $0x1,%edx
  4021b3:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4021b8:	4c 89 ef             	mov    %r13,%rdi
  4021bb:	e8 4d ff ff ff       	callq  40210d <rio_read>
  4021c0:	83 f8 01             	cmp    $0x1,%eax
  4021c3:	75 12                	jne    4021d7 <rio_readlineb+0x43>
  4021c5:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4021c9:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4021ce:	88 45 00             	mov    %al,0x0(%rbp)
  4021d1:	3c 0a                	cmp    $0xa,%al
  4021d3:	75 0f                	jne    4021e4 <rio_readlineb+0x50>
  4021d5:	eb 1b                	jmp    4021f2 <rio_readlineb+0x5e>
  4021d7:	85 c0                	test   %eax,%eax
  4021d9:	75 23                	jne    4021fe <rio_readlineb+0x6a>
  4021db:	48 83 fb 01          	cmp    $0x1,%rbx
  4021df:	90                   	nop
  4021e0:	75 13                	jne    4021f5 <rio_readlineb+0x61>
  4021e2:	eb 23                	jmp    402207 <rio_readlineb+0x73>
  4021e4:	48 83 c3 01          	add    $0x1,%rbx
  4021e8:	48 89 d5             	mov    %rdx,%rbp
  4021eb:	4c 39 e3             	cmp    %r12,%rbx
  4021ee:	72 be                	jb     4021ae <rio_readlineb+0x1a>
  4021f0:	eb 03                	jmp    4021f5 <rio_readlineb+0x61>
  4021f2:	48 89 d5             	mov    %rdx,%rbp
  4021f5:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4021f9:	48 89 d8             	mov    %rbx,%rax
  4021fc:	eb 0e                	jmp    40220c <rio_readlineb+0x78>
  4021fe:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402205:	eb 05                	jmp    40220c <rio_readlineb+0x78>
  402207:	b8 00 00 00 00       	mov    $0x0,%eax
  40220c:	48 83 c4 18          	add    $0x18,%rsp
  402210:	5b                   	pop    %rbx
  402211:	5d                   	pop    %rbp
  402212:	41 5c                	pop    %r12
  402214:	41 5d                	pop    %r13
  402216:	c3                   	retq   

0000000000402217 <submitr>:
  402217:	41 57                	push   %r15
  402219:	41 56                	push   %r14
  40221b:	41 55                	push   %r13
  40221d:	41 54                	push   %r12
  40221f:	55                   	push   %rbp
  402220:	53                   	push   %rbx
  402221:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402228:	49 89 fc             	mov    %rdi,%r12
  40222b:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  40222f:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  402234:	49 89 cf             	mov    %rcx,%r15
  402237:	4d 89 c6             	mov    %r8,%r14
  40223a:	4d 89 cd             	mov    %r9,%r13
  40223d:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  402244:	00 
  402245:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  40224c:	00 00 00 00 
  402250:	ba 00 00 00 00       	mov    $0x0,%edx
  402255:	be 01 00 00 00       	mov    $0x1,%esi
  40225a:	bf 02 00 00 00       	mov    $0x2,%edi
  40225f:	e8 cc eb ff ff       	callq  400e30 <socket@plt>
  402264:	89 c5                	mov    %eax,%ebp
  402266:	85 c0                	test   %eax,%eax
  402268:	79 4e                	jns    4022b8 <submitr+0xa1>
  40226a:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  402271:	3a 20 43 
  402274:	48 89 03             	mov    %rax,(%rbx)
  402277:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  40227e:	20 75 6e 
  402281:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402285:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  40228c:	74 6f 20 
  40228f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402293:	48 b8 63 72 65 61 74 	mov    $0x7320657461657263,%rax
  40229a:	65 20 73 
  40229d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4022a1:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4022a8:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4022ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022b3:	e9 83 06 00 00       	jmpq   40293b <submitr+0x724>
  4022b8:	4c 89 e7             	mov    %r12,%rdi
  4022bb:	e8 50 ea ff ff       	callq  400d10 <gethostbyname@plt>
  4022c0:	48 85 c0             	test   %rax,%rax
  4022c3:	75 75                	jne    40233a <submitr+0x123>
  4022c5:	48 b8 45 72 72 6f 72 	mov    $0x44203a726f727245,%rax
  4022cc:	3a 20 44 
  4022cf:	48 89 03             	mov    %rax,(%rbx)
  4022d2:	48 b8 4e 53 20 69 73 	mov    $0x6e7520736920534e,%rax
  4022d9:	20 75 6e 
  4022dc:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4022e0:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  4022e7:	74 6f 20 
  4022ea:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4022ee:	48 b8 72 65 73 6f 6c 	mov    $0x2065766c6f736572,%rax
  4022f5:	76 65 20 
  4022f8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4022fc:	48 b8 41 75 74 6f 6c 	mov    $0x2062616c6f747541,%rax
  402303:	61 62 20 
  402306:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40230a:	48 b8 73 65 72 76 65 	mov    $0x6120726576726573,%rax
  402311:	72 20 61 
  402314:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402318:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  40231f:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  402325:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  402329:	89 ef                	mov    %ebp,%edi
  40232b:	e8 a0 e9 ff ff       	callq  400cd0 <close@plt>
  402330:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402335:	e9 01 06 00 00       	jmpq   40293b <submitr+0x724>
  40233a:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  402341:	00 00 00 00 00 
  402346:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  40234d:	00 00 00 00 00 
  402352:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  402359:	00 02 00 
  40235c:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402360:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402364:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  40236b:	00 
  40236c:	48 8b 39             	mov    (%rcx),%rdi
  40236f:	e8 3c ea ff ff       	callq  400db0 <bcopy@plt>
  402374:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  402379:	66 c1 c8 08          	ror    $0x8,%ax
  40237d:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  402384:	00 
  402385:	ba 10 00 00 00       	mov    $0x10,%edx
  40238a:	48 8d b4 24 40 a0 00 	lea    0xa040(%rsp),%rsi
  402391:	00 
  402392:	89 ef                	mov    %ebp,%edi
  402394:	e8 87 ea ff ff       	callq  400e20 <connect@plt>
  402399:	85 c0                	test   %eax,%eax
  40239b:	79 67                	jns    402404 <submitr+0x1ed>
  40239d:	48 b8 45 72 72 6f 72 	mov    $0x55203a726f727245,%rax
  4023a4:	3a 20 55 
  4023a7:	48 89 03             	mov    %rax,(%rbx)
  4023aa:	48 b8 6e 61 62 6c 65 	mov    $0x6f7420656c62616e,%rax
  4023b1:	20 74 6f 
  4023b4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023b8:	48 b8 20 63 6f 6e 6e 	mov    $0x7463656e6e6f6320,%rax
  4023bf:	65 63 74 
  4023c2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023c6:	48 b8 20 74 6f 20 74 	mov    $0x20656874206f7420,%rax
  4023cd:	68 65 20 
  4023d0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023d4:	48 b8 41 75 74 6f 6c 	mov    $0x2062616c6f747541,%rax
  4023db:	61 62 20 
  4023de:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4023e2:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  4023e9:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  4023ef:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4023f3:	89 ef                	mov    %ebp,%edi
  4023f5:	e8 d6 e8 ff ff       	callq  400cd0 <close@plt>
  4023fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023ff:	e9 37 05 00 00       	jmpq   40293b <submitr+0x724>
  402404:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40240b:	4c 89 ef             	mov    %r13,%rdi
  40240e:	b8 00 00 00 00       	mov    $0x0,%eax
  402413:	48 89 d1             	mov    %rdx,%rcx
  402416:	f2 ae                	repnz scas %es:(%rdi),%al
  402418:	48 f7 d1             	not    %rcx
  40241b:	48 89 ce             	mov    %rcx,%rsi
  40241e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402423:	48 89 d1             	mov    %rdx,%rcx
  402426:	f2 ae                	repnz scas %es:(%rdi),%al
  402428:	48 f7 d1             	not    %rcx
  40242b:	49 89 c8             	mov    %rcx,%r8
  40242e:	4c 89 ff             	mov    %r15,%rdi
  402431:	48 89 d1             	mov    %rdx,%rcx
  402434:	f2 ae                	repnz scas %es:(%rdi),%al
  402436:	49 29 c8             	sub    %rcx,%r8
  402439:	4c 89 f7             	mov    %r14,%rdi
  40243c:	48 89 d1             	mov    %rdx,%rcx
  40243f:	f2 ae                	repnz scas %es:(%rdi),%al
  402441:	49 29 c8             	sub    %rcx,%r8
  402444:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  402449:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  40244e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402454:	76 72                	jbe    4024c8 <submitr+0x2b1>
  402456:	48 b8 45 72 72 6f 72 	mov    $0x52203a726f727245,%rax
  40245d:	3a 20 52 
  402460:	48 89 03             	mov    %rax,(%rbx)
  402463:	48 b8 65 73 75 6c 74 	mov    $0x747320746c757365,%rax
  40246a:	20 73 74 
  40246d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402471:	48 b8 72 69 6e 67 20 	mov    $0x6f6f7420676e6972,%rax
  402478:	74 6f 6f 
  40247b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40247f:	48 b8 20 6c 61 72 67 	mov    $0x202e656772616c20,%rax
  402486:	65 2e 20 
  402489:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40248d:	48 b8 49 6e 63 72 65 	mov    $0x6573616572636e49,%rax
  402494:	61 73 65 
  402497:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40249b:	48 b8 20 53 55 42 4d 	mov    $0x5254494d42555320,%rax
  4024a2:	49 54 52 
  4024a5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4024a9:	48 b8 5f 4d 41 58 42 	mov    $0x46554258414d5f,%rax
  4024b0:	55 46 00 
  4024b3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4024b7:	89 ef                	mov    %ebp,%edi
  4024b9:	e8 12 e8 ff ff       	callq  400cd0 <close@plt>
  4024be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024c3:	e9 73 04 00 00       	jmpq   40293b <submitr+0x724>
  4024c8:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  4024cf:	00 
  4024d0:	b9 00 04 00 00       	mov    $0x400,%ecx
  4024d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4024da:	48 89 f7             	mov    %rsi,%rdi
  4024dd:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4024e0:	4c 89 ef             	mov    %r13,%rdi
  4024e3:	e8 f3 fa ff ff       	callq  401fdb <urlencode>
  4024e8:	85 c0                	test   %eax,%eax
  4024ea:	0f 89 8a 00 00 00    	jns    40257a <submitr+0x363>
  4024f0:	48 b8 45 72 72 6f 72 	mov    $0x52203a726f727245,%rax
  4024f7:	3a 20 52 
  4024fa:	48 89 03             	mov    %rax,(%rbx)
  4024fd:	48 b8 65 73 75 6c 74 	mov    $0x747320746c757365,%rax
  402504:	20 73 74 
  402507:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40250b:	48 b8 72 69 6e 67 20 	mov    $0x6e6f6320676e6972,%rax
  402512:	63 6f 6e 
  402515:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402519:	48 b8 74 61 69 6e 73 	mov    $0x6e6120736e696174,%rax
  402520:	20 61 6e 
  402523:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402527:	48 b8 20 69 6c 6c 65 	mov    $0x6c6167656c6c6920,%rax
  40252e:	67 61 6c 
  402531:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402535:	48 b8 20 6f 72 20 75 	mov    $0x72706e7520726f20,%rax
  40253c:	6e 70 72 
  40253f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402543:	48 b8 69 6e 74 61 62 	mov    $0x20656c6261746e69,%rax
  40254a:	6c 65 20 
  40254d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402551:	48 b8 63 68 61 72 61 	mov    $0x6574636172616863,%rax
  402558:	63 74 65 
  40255b:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40255f:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402565:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402569:	89 ef                	mov    %ebp,%edi
  40256b:	e8 60 e7 ff ff       	callq  400cd0 <close@plt>
  402570:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402575:	e9 c1 03 00 00       	jmpq   40293b <submitr+0x724>
  40257a:	4c 89 24 24          	mov    %r12,(%rsp)
  40257e:	4c 8d 8c 24 30 40 00 	lea    0x4030(%rsp),%r9
  402585:	00 
  402586:	4d 89 f8             	mov    %r15,%r8
  402589:	4c 89 f1             	mov    %r14,%rcx
  40258c:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  402591:	be 48 35 40 00       	mov    $0x403548,%esi
  402596:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  40259d:	00 
  40259e:	b8 00 00 00 00       	mov    $0x0,%eax
  4025a3:	e8 58 e8 ff ff       	callq  400e00 <sprintf@plt>
  4025a8:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  4025af:	00 
  4025b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4025b5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4025bc:	f2 ae                	repnz scas %es:(%rdi),%al
  4025be:	48 f7 d1             	not    %rcx
  4025c1:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4025c5:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4025cc:	00 
  4025cd:	89 ef                	mov    %ebp,%edi
  4025cf:	e8 dd fa ff ff       	callq  4020b1 <rio_writen>
  4025d4:	48 85 c0             	test   %rax,%rax
  4025d7:	79 6b                	jns    402644 <submitr+0x42d>
  4025d9:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  4025e0:	3a 20 43 
  4025e3:	48 89 03             	mov    %rax,(%rbx)
  4025e6:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  4025ed:	20 75 6e 
  4025f0:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025f4:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  4025fb:	74 6f 20 
  4025fe:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402602:	48 b8 77 72 69 74 65 	mov    $0x6f74206574697277,%rax
  402609:	20 74 6f 
  40260c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402610:	48 b8 20 74 68 65 20 	mov    $0x7475412065687420,%rax
  402617:	41 75 74 
  40261a:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40261e:	48 b8 6f 6c 61 62 20 	mov    $0x7265732062616c6f,%rax
  402625:	73 65 72 
  402628:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40262c:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  402633:	89 ef                	mov    %ebp,%edi
  402635:	e8 96 e6 ff ff       	callq  400cd0 <close@plt>
  40263a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40263f:	e9 f7 02 00 00       	jmpq   40293b <submitr+0x724>
  402644:	89 ee                	mov    %ebp,%esi
  402646:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  40264d:	00 
  40264e:	e8 4d f9 ff ff       	callq  401fa0 <rio_readinitb>
  402653:	ba 00 20 00 00       	mov    $0x2000,%edx
  402658:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40265f:	00 
  402660:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402667:	00 
  402668:	e8 27 fb ff ff       	callq  402194 <rio_readlineb>
  40266d:	48 85 c0             	test   %rax,%rax
  402670:	7f 7f                	jg     4026f1 <submitr+0x4da>
  402672:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  402679:	3a 20 43 
  40267c:	48 89 03             	mov    %rax,(%rbx)
  40267f:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  402686:	20 75 6e 
  402689:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40268d:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  402694:	74 6f 20 
  402697:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40269b:	48 b8 72 65 61 64 20 	mov    $0x7269662064616572,%rax
  4026a2:	66 69 72 
  4026a5:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026a9:	48 b8 73 74 20 68 65 	mov    $0x6564616568207473,%rax
  4026b0:	61 64 65 
  4026b3:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026b7:	48 b8 72 20 66 72 6f 	mov    $0x41206d6f72662072,%rax
  4026be:	6d 20 41 
  4026c1:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026c5:	48 b8 75 74 6f 6c 61 	mov    $0x732062616c6f7475,%rax
  4026cc:	62 20 73 
  4026cf:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026d3:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  4026da:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  4026e0:	89 ef                	mov    %ebp,%edi
  4026e2:	e8 e9 e5 ff ff       	callq  400cd0 <close@plt>
  4026e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026ec:	e9 4a 02 00 00       	jmpq   40293b <submitr+0x724>
  4026f1:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  4026f6:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  4026fd:	00 
  4026fe:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  402705:	00 
  402706:	be df 35 40 00       	mov    $0x4035df,%esi
  40270b:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  402712:	00 
  402713:	b8 00 00 00 00       	mov    $0x0,%eax
  402718:	e8 73 e6 ff ff       	callq  400d90 <__isoc99_sscanf@plt>
  40271d:	e9 95 00 00 00       	jmpq   4027b7 <submitr+0x5a0>
  402722:	ba 00 20 00 00       	mov    $0x2000,%edx
  402727:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40272e:	00 
  40272f:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402736:	00 
  402737:	e8 58 fa ff ff       	callq  402194 <rio_readlineb>
  40273c:	48 85 c0             	test   %rax,%rax
  40273f:	7f 76                	jg     4027b7 <submitr+0x5a0>
  402741:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  402748:	3a 20 43 
  40274b:	48 89 03             	mov    %rax,(%rbx)
  40274e:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  402755:	20 75 6e 
  402758:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40275c:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  402763:	74 6f 20 
  402766:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40276a:	48 b8 72 65 61 64 20 	mov    $0x6165682064616572,%rax
  402771:	68 65 61 
  402774:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402778:	48 b8 64 65 72 73 20 	mov    $0x6f72662073726564,%rax
  40277f:	66 72 6f 
  402782:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402786:	48 b8 6d 20 41 75 74 	mov    $0x616c6f747541206d,%rax
  40278d:	6f 6c 61 
  402790:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402794:	48 b8 62 20 73 65 72 	mov    $0x7265767265732062,%rax
  40279b:	76 65 72 
  40279e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027a2:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  4027a6:	89 ef                	mov    %ebp,%edi
  4027a8:	e8 23 e5 ff ff       	callq  400cd0 <close@plt>
  4027ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027b2:	e9 84 01 00 00       	jmpq   40293b <submitr+0x724>
  4027b7:	0f b6 84 24 30 60 00 	movzbl 0x6030(%rsp),%eax
  4027be:	00 
  4027bf:	83 e8 0d             	sub    $0xd,%eax
  4027c2:	75 15                	jne    4027d9 <submitr+0x5c2>
  4027c4:	0f b6 84 24 31 60 00 	movzbl 0x6031(%rsp),%eax
  4027cb:	00 
  4027cc:	83 e8 0a             	sub    $0xa,%eax
  4027cf:	75 08                	jne    4027d9 <submitr+0x5c2>
  4027d1:	0f b6 84 24 32 60 00 	movzbl 0x6032(%rsp),%eax
  4027d8:	00 
  4027d9:	85 c0                	test   %eax,%eax
  4027db:	0f 85 41 ff ff ff    	jne    402722 <submitr+0x50b>
  4027e1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027e6:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4027ed:	00 
  4027ee:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  4027f5:	00 
  4027f6:	e8 99 f9 ff ff       	callq  402194 <rio_readlineb>
  4027fb:	48 85 c0             	test   %rax,%rax
  4027fe:	0f 8f 80 00 00 00    	jg     402884 <submitr+0x66d>
  402804:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  40280b:	3a 20 43 
  40280e:	48 89 03             	mov    %rax,(%rbx)
  402811:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  402818:	20 75 6e 
  40281b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40281f:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  402826:	74 6f 20 
  402829:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40282d:	48 b8 72 65 61 64 20 	mov    $0x6174732064616572,%rax
  402834:	73 74 61 
  402837:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40283b:	48 b8 74 75 73 20 6d 	mov    $0x7373656d20737574,%rax
  402842:	65 73 73 
  402845:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402849:	48 b8 61 67 65 20 66 	mov    $0x6d6f726620656761,%rax
  402850:	72 6f 6d 
  402853:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402857:	48 b8 20 41 75 74 6f 	mov    $0x62616c6f74754120,%rax
  40285e:	6c 61 62 
  402861:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402865:	48 b8 20 73 65 72 76 	mov    $0x72657672657320,%rax
  40286c:	65 72 00 
  40286f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402873:	89 ef                	mov    %ebp,%edi
  402875:	e8 56 e4 ff ff       	callq  400cd0 <close@plt>
  40287a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40287f:	e9 b7 00 00 00       	jmpq   40293b <submitr+0x724>
  402884:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  40288b:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402891:	74 28                	je     4028bb <submitr+0x6a4>
  402893:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402898:	be a8 35 40 00       	mov    $0x4035a8,%esi
  40289d:	48 89 df             	mov    %rbx,%rdi
  4028a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4028a5:	e8 56 e5 ff ff       	callq  400e00 <sprintf@plt>
  4028aa:	89 ef                	mov    %ebp,%edi
  4028ac:	e8 1f e4 ff ff       	callq  400cd0 <close@plt>
  4028b1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028b6:	e9 80 00 00 00       	jmpq   40293b <submitr+0x724>
  4028bb:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4028c2:	00 
  4028c3:	48 89 df             	mov    %rbx,%rdi
  4028c6:	e8 95 e3 ff ff       	callq  400c60 <strcpy@plt>
  4028cb:	89 ef                	mov    %ebp,%edi
  4028cd:	e8 fe e3 ff ff       	callq  400cd0 <close@plt>
  4028d2:	0f b6 03             	movzbl (%rbx),%eax
  4028d5:	83 e8 4f             	sub    $0x4f,%eax
  4028d8:	75 18                	jne    4028f2 <submitr+0x6db>
  4028da:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  4028de:	83 ea 4b             	sub    $0x4b,%edx
  4028e1:	75 11                	jne    4028f4 <submitr+0x6dd>
  4028e3:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4028e7:	83 ea 0a             	sub    $0xa,%edx
  4028ea:	75 08                	jne    4028f4 <submitr+0x6dd>
  4028ec:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  4028f0:	eb 02                	jmp    4028f4 <submitr+0x6dd>
  4028f2:	89 c2                	mov    %eax,%edx
  4028f4:	85 d2                	test   %edx,%edx
  4028f6:	74 30                	je     402928 <submitr+0x711>
  4028f8:	bf f0 35 40 00       	mov    $0x4035f0,%edi
  4028fd:	b9 05 00 00 00       	mov    $0x5,%ecx
  402902:	48 89 de             	mov    %rbx,%rsi
  402905:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402907:	0f 97 c1             	seta   %cl
  40290a:	0f 92 c2             	setb   %dl
  40290d:	38 d1                	cmp    %dl,%cl
  40290f:	74 1e                	je     40292f <submitr+0x718>
  402911:	85 c0                	test   %eax,%eax
  402913:	75 0d                	jne    402922 <submitr+0x70b>
  402915:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402919:	83 e8 4b             	sub    $0x4b,%eax
  40291c:	75 04                	jne    402922 <submitr+0x70b>
  40291e:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  402922:	85 c0                	test   %eax,%eax
  402924:	75 10                	jne    402936 <submitr+0x71f>
  402926:	eb 13                	jmp    40293b <submitr+0x724>
  402928:	b8 00 00 00 00       	mov    $0x0,%eax
  40292d:	eb 0c                	jmp    40293b <submitr+0x724>
  40292f:	b8 00 00 00 00       	mov    $0x0,%eax
  402934:	eb 05                	jmp    40293b <submitr+0x724>
  402936:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40293b:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402942:	5b                   	pop    %rbx
  402943:	5d                   	pop    %rbp
  402944:	41 5c                	pop    %r12
  402946:	41 5d                	pop    %r13
  402948:	41 5e                	pop    %r14
  40294a:	41 5f                	pop    %r15
  40294c:	c3                   	retq   

000000000040294d <init_timeout>:
  40294d:	53                   	push   %rbx
  40294e:	89 fb                	mov    %edi,%ebx
  402950:	85 ff                	test   %edi,%edi
  402952:	74 1f                	je     402973 <init_timeout+0x26>
  402954:	85 ff                	test   %edi,%edi
  402956:	79 05                	jns    40295d <init_timeout+0x10>
  402958:	bb 00 00 00 00       	mov    $0x0,%ebx
  40295d:	be b2 1f 40 00       	mov    $0x401fb2,%esi
  402962:	bf 0e 00 00 00       	mov    $0xe,%edi
  402967:	e8 94 e3 ff ff       	callq  400d00 <signal@plt>
  40296c:	89 df                	mov    %ebx,%edi
  40296e:	e8 4d e3 ff ff       	callq  400cc0 <alarm@plt>
  402973:	5b                   	pop    %rbx
  402974:	c3                   	retq   

0000000000402975 <init_driver>:
  402975:	55                   	push   %rbp
  402976:	53                   	push   %rbx
  402977:	48 83 ec 18          	sub    $0x18,%rsp
  40297b:	48 89 fd             	mov    %rdi,%rbp
  40297e:	be 01 00 00 00       	mov    $0x1,%esi
  402983:	bf 0d 00 00 00       	mov    $0xd,%edi
  402988:	e8 73 e3 ff ff       	callq  400d00 <signal@plt>
  40298d:	be 01 00 00 00       	mov    $0x1,%esi
  402992:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402997:	e8 64 e3 ff ff       	callq  400d00 <signal@plt>
  40299c:	be 01 00 00 00       	mov    $0x1,%esi
  4029a1:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4029a6:	e8 55 e3 ff ff       	callq  400d00 <signal@plt>
  4029ab:	ba 00 00 00 00       	mov    $0x0,%edx
  4029b0:	be 01 00 00 00       	mov    $0x1,%esi
  4029b5:	bf 02 00 00 00       	mov    $0x2,%edi
  4029ba:	e8 71 e4 ff ff       	callq  400e30 <socket@plt>
  4029bf:	89 c3                	mov    %eax,%ebx
  4029c1:	85 c0                	test   %eax,%eax
  4029c3:	79 4f                	jns    402a14 <init_driver+0x9f>
  4029c5:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  4029cc:	3a 20 43 
  4029cf:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029d3:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  4029da:	20 75 6e 
  4029dd:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4029e1:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  4029e8:	74 6f 20 
  4029eb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029ef:	48 b8 63 72 65 61 74 	mov    $0x7320657461657263,%rax
  4029f6:	65 20 73 
  4029f9:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4029fd:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a04:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a0f:	e9 23 01 00 00       	jmpq   402b37 <init_driver+0x1c2>
  402a14:	bf f5 35 40 00       	mov    $0x4035f5,%edi
  402a19:	e8 f2 e2 ff ff       	callq  400d10 <gethostbyname@plt>
  402a1e:	48 85 c0             	test   %rax,%rax
  402a21:	75 68                	jne    402a8b <init_driver+0x116>
  402a23:	48 b8 45 72 72 6f 72 	mov    $0x44203a726f727245,%rax
  402a2a:	3a 20 44 
  402a2d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a31:	48 b8 4e 53 20 69 73 	mov    $0x6e7520736920534e,%rax
  402a38:	20 75 6e 
  402a3b:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a3f:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  402a46:	74 6f 20 
  402a49:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a4d:	48 b8 72 65 73 6f 6c 	mov    $0x2065766c6f736572,%rax
  402a54:	76 65 20 
  402a57:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a5b:	48 b8 73 65 72 76 65 	mov    $0x6120726576726573,%rax
  402a62:	72 20 61 
  402a65:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a69:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402a70:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402a76:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402a7a:	89 df                	mov    %ebx,%edi
  402a7c:	e8 4f e2 ff ff       	callq  400cd0 <close@plt>
  402a81:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a86:	e9 ac 00 00 00       	jmpq   402b37 <init_driver+0x1c2>
  402a8b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402a92:	00 
  402a93:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402a9a:	00 00 
  402a9c:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402aa2:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402aa6:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402aaa:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402aaf:	48 8b 39             	mov    (%rcx),%rdi
  402ab2:	e8 f9 e2 ff ff       	callq  400db0 <bcopy@plt>
  402ab7:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402abe:	ba 10 00 00 00       	mov    $0x10,%edx
  402ac3:	48 89 e6             	mov    %rsp,%rsi
  402ac6:	89 df                	mov    %ebx,%edi
  402ac8:	e8 53 e3 ff ff       	callq  400e20 <connect@plt>
  402acd:	85 c0                	test   %eax,%eax
  402acf:	79 50                	jns    402b21 <init_driver+0x1ac>
  402ad1:	48 b8 45 72 72 6f 72 	mov    $0x55203a726f727245,%rax
  402ad8:	3a 20 55 
  402adb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402adf:	48 b8 6e 61 62 6c 65 	mov    $0x6f7420656c62616e,%rax
  402ae6:	20 74 6f 
  402ae9:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402aed:	48 b8 20 63 6f 6e 6e 	mov    $0x7463656e6e6f6320,%rax
  402af4:	65 63 74 
  402af7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402afb:	48 b8 20 74 6f 20 73 	mov    $0x76726573206f7420,%rax
  402b02:	65 72 76 
  402b05:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b09:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402b0f:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402b13:	89 df                	mov    %ebx,%edi
  402b15:	e8 b6 e1 ff ff       	callq  400cd0 <close@plt>
  402b1a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b1f:	eb 16                	jmp    402b37 <init_driver+0x1c2>
  402b21:	89 df                	mov    %ebx,%edi
  402b23:	e8 a8 e1 ff ff       	callq  400cd0 <close@plt>
  402b28:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402b2e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402b32:	b8 00 00 00 00       	mov    $0x0,%eax
  402b37:	48 83 c4 18          	add    $0x18,%rsp
  402b3b:	5b                   	pop    %rbx
  402b3c:	5d                   	pop    %rbp
  402b3d:	c3                   	retq   

0000000000402b3e <driver_post>:
  402b3e:	53                   	push   %rbx
  402b3f:	48 83 ec 10          	sub    $0x10,%rsp
  402b43:	4c 89 cb             	mov    %r9,%rbx
  402b46:	45 85 c0             	test   %r8d,%r8d
  402b49:	74 22                	je     402b6d <driver_post+0x2f>
  402b4b:	48 89 ce             	mov    %rcx,%rsi
  402b4e:	bf 0c 36 40 00       	mov    $0x40360c,%edi
  402b53:	b8 00 00 00 00       	mov    $0x0,%eax
  402b58:	e8 43 e1 ff ff       	callq  400ca0 <printf@plt>
  402b5d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b62:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b66:	b8 00 00 00 00       	mov    $0x0,%eax
  402b6b:	eb 39                	jmp    402ba6 <driver_post+0x68>
  402b6d:	48 85 ff             	test   %rdi,%rdi
  402b70:	74 26                	je     402b98 <driver_post+0x5a>
  402b72:	80 3f 00             	cmpb   $0x0,(%rdi)
  402b75:	74 21                	je     402b98 <driver_post+0x5a>
  402b77:	4c 89 0c 24          	mov    %r9,(%rsp)
  402b7b:	49 89 c9             	mov    %rcx,%r9
  402b7e:	49 89 d0             	mov    %rdx,%r8
  402b81:	48 89 f9             	mov    %rdi,%rcx
  402b84:	48 89 f2             	mov    %rsi,%rdx
  402b87:	be 50 00 00 00       	mov    $0x50,%esi
  402b8c:	bf f5 35 40 00       	mov    $0x4035f5,%edi
  402b91:	e8 81 f6 ff ff       	callq  402217 <submitr>
  402b96:	eb 0e                	jmp    402ba6 <driver_post+0x68>
  402b98:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b9d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ba1:	b8 00 00 00 00       	mov    $0x0,%eax
  402ba6:	48 83 c4 10          	add    $0x10,%rsp
  402baa:	5b                   	pop    %rbx
  402bab:	c3                   	retq   

0000000000402bac <check>:
  402bac:	89 f8                	mov    %edi,%eax
  402bae:	c1 e8 1c             	shr    $0x1c,%eax
  402bb1:	85 c0                	test   %eax,%eax
  402bb3:	74 1d                	je     402bd2 <check+0x26>
  402bb5:	b9 00 00 00 00       	mov    $0x0,%ecx
  402bba:	eb 0b                	jmp    402bc7 <check+0x1b>
  402bbc:	89 f8                	mov    %edi,%eax
  402bbe:	d3 e8                	shr    %cl,%eax
  402bc0:	3c 0a                	cmp    $0xa,%al
  402bc2:	74 14                	je     402bd8 <check+0x2c>
  402bc4:	83 c1 08             	add    $0x8,%ecx
  402bc7:	83 f9 1f             	cmp    $0x1f,%ecx
  402bca:	7e f0                	jle    402bbc <check+0x10>
  402bcc:	b8 01 00 00 00       	mov    $0x1,%eax
  402bd1:	c3                   	retq   
  402bd2:	b8 00 00 00 00       	mov    $0x0,%eax
  402bd7:	c3                   	retq   
  402bd8:	b8 00 00 00 00       	mov    $0x0,%eax
  402bdd:	c3                   	retq   

0000000000402bde <gencookie>:
  402bde:	53                   	push   %rbx
  402bdf:	83 c7 01             	add    $0x1,%edi
  402be2:	e8 59 e0 ff ff       	callq  400c40 <srandom@plt>
  402be7:	e8 84 e1 ff ff       	callq  400d70 <random@plt>
  402bec:	89 c3                	mov    %eax,%ebx
  402bee:	89 c7                	mov    %eax,%edi
  402bf0:	e8 b7 ff ff ff       	callq  402bac <check>
  402bf5:	85 c0                	test   %eax,%eax
  402bf7:	74 ee                	je     402be7 <gencookie+0x9>
  402bf9:	89 d8                	mov    %ebx,%eax
  402bfb:	5b                   	pop    %rbx
  402bfc:	c3                   	retq   
  402bfd:	0f 1f 00             	nopl   (%rax)

0000000000402c00 <__libc_csu_init>:
  402c00:	41 57                	push   %r15
  402c02:	41 89 ff             	mov    %edi,%r15d
  402c05:	41 56                	push   %r14
  402c07:	49 89 f6             	mov    %rsi,%r14
  402c0a:	41 55                	push   %r13
  402c0c:	49 89 d5             	mov    %rdx,%r13
  402c0f:	41 54                	push   %r12
  402c11:	4c 8d 25 e8 21 20 00 	lea    0x2021e8(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  402c18:	55                   	push   %rbp
  402c19:	48 8d 2d e8 21 20 00 	lea    0x2021e8(%rip),%rbp        # 604e08 <__init_array_end>
  402c20:	53                   	push   %rbx
  402c21:	4c 29 e5             	sub    %r12,%rbp
  402c24:	31 db                	xor    %ebx,%ebx
  402c26:	48 c1 fd 03          	sar    $0x3,%rbp
  402c2a:	48 83 ec 08          	sub    $0x8,%rsp
  402c2e:	e8 b5 df ff ff       	callq  400be8 <_init>
  402c33:	48 85 ed             	test   %rbp,%rbp
  402c36:	74 1e                	je     402c56 <__libc_csu_init+0x56>
  402c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c3f:	00 
  402c40:	4c 89 ea             	mov    %r13,%rdx
  402c43:	4c 89 f6             	mov    %r14,%rsi
  402c46:	44 89 ff             	mov    %r15d,%edi
  402c49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402c4d:	48 83 c3 01          	add    $0x1,%rbx
  402c51:	48 39 eb             	cmp    %rbp,%rbx
  402c54:	75 ea                	jne    402c40 <__libc_csu_init+0x40>
  402c56:	48 83 c4 08          	add    $0x8,%rsp
  402c5a:	5b                   	pop    %rbx
  402c5b:	5d                   	pop    %rbp
  402c5c:	41 5c                	pop    %r12
  402c5e:	41 5d                	pop    %r13
  402c60:	41 5e                	pop    %r14
  402c62:	41 5f                	pop    %r15
  402c64:	c3                   	retq   
  402c65:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  402c6c:	00 00 00 00 

0000000000402c70 <__libc_csu_fini>:
  402c70:	f3 c3                	repz retq 
  402c72:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000402c74 <_fini>:
  402c74:	48 83 ec 08          	sub    $0x8,%rsp
  402c78:	48 83 c4 08          	add    $0x8,%rsp
  402c7c:	c3                   	retq   
