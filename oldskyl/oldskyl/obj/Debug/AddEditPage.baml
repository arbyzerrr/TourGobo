   M S B A M L   `   `   `  ????B  >oldskyl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:oldskyloldskyl  5          oldskyl.AddEditPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:oldskyl     5        N? Title$  AddEditPage??5	      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $	??200 ?6   ?? 5      $??* ?6    ? RowDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??* ?6   ?? 5      $??* ?6   ?? 5      $??* ?6   .+?5   
   ?? $??Название??6   $??Center=?6$   $??Center=?6?   6^   ?? 5   
   $%??Количество звёзд??6   $??Center=?6,   $??Center=?6G   $??1??6d   6s   ?? 5   
   $??Страна??6   $??Center=?6"   $??Center=?6=   $??2??6Z   6i   ?? 5   
   $??1??6(   $	??500??68   $
??Left=?6D   $??30??6_   $??10,0,0,0q?6k    ?? 	MaxLength$	 100??6}   ??6   ?? *name+6?   ?? 5   
   $??1??61   $??1??6A   $	??250??6N   $
??Left=?6Z   $??30??6u   $??10,0,0,0q?6?   ??6   ?? *countofstarts+6?   ?? 5   
   -   5         ??Name$ ComboCountries??5   ?   $??1??64   $??2??6D   $	??250??6Q   $
??Left=?6]   $??30??6x   $??10,0,0,0q?6?    ?? DisplayMemberPath$
 name??6?    ?? SelectedItem 6   ?? *	Country+6?   ?? 5   
   -   5         ??Name$ 
ButtonSave??5      $??1??6%   $??3??65   $??Сохранить??6[   6q   5      5      