;#InstallKeybdHook
;KeyHistory

SC056::RControl ; MSI |\ key
SC152::#^c ; MSI Insert
Esc::!Tab
SC149::Volume_Up ; page up key
SC151::Volume_Down  ; page down key

toggleMaxWindow()
{
  WinGet, WinState, MinMax, A
  if (WinState = 1)
  {
    WinRestore, A
  }
  else
  {
    WinMaximize, A
  }
}

Space & k::Send {Blind}{Up}
Space & h::Send {Blind}{Left}
Space & j::Send {Blind}{Down}
Space & l::Send {Blind}{Right}
Space & i::Send {Blind}{Home}
Space & o::Send {Blind}{End}
Space & v::Send #v
Space & F5::Reload
Space & u::Send ^{PgUp}
Space & p::Send ^{PgDn}
Space & ,::Send {PgUp}
Space & m::Send {PgDn}
Space & n::Send #+{Left}
Space & F11::toggleMaxWindow()
Space & a::Send ^#1
Space & s::Send ^#2
Space & d::Send ^#3
Space & f::Send ^#4
Space & g::Send ^#5
Space & q::Send ^#6
Space & w::Send ^#7
Space & e::Send ^#8
Space & r::Send ^#9
Space & t::Send ^#0
Space & `;::Send ^{BS}
Space & x::Send !{F4}
Space & -::Send {Volume_Down}
Space & =::Send {Volume_Up}
Space & [::Send !{Left}
Space & ]::Send !{Left}

 Space::Send  {Space}
+Space::Send +{Space}
!Space::Send !{Space}
#Space::Send #{Space}
^Space::Send ^{Space}

CapsLock & Space::Send {Esc}

CapsLock & w::Send ^w
CapsLock & e::Send {Esc}
CapsLock & r::Send ^+t
CapsLock & f::Send {Del}
CapsLock & d::Send {BS}
CapsLock & s::Send {Esc}

CapsLock & y::Send {Esc}
CapsLock & u::Send {Esc}
CapsLock & i::Send {Esc}
CapsLock & o::Send {Esc}
CapsLock & p::Send ^+p
CapsLock & h::Send !{Left}
CapsLock & j::Send !{Down}
CapsLock & k::Send !{Up}
CapsLock & l::Send !{Right}
CapsLock & n::Send {Esc}
CapsLock & ,::Send {Esc}
CapsLock & .::Send {Esc}
CapsLock & `;::Send {Esc}
CapsLock & /::Send {Esc}
CapsLock & [::Send {Esc}
CapsLock & 8::Send {Esc}
CapsLock & 9::Send {Esc}
CapsLock & 0::Send {Esc}
CapsLock & -::Send !+-
CapsLock & =::Send !+=

CapsLock::Esc

`; & d::Send +v{Del}
`; & z::Send +z+z
`; & j::Send ^+,
`; & l::Send ^+.
`; & s::
MouseMove 653, 757, 0 
Click
Return

 `;::Send  {;}
+`;::Send +{;}
!`;::Send !{;}
#`;::Send #{;}
^`;::Send ^{;}
