   M S B A M L   `   `   `  ????B  >oldskyl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:oldskyloldskyl  5          oldskyl.HotelPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:oldskyl     5      -   5          N? Title$  	HotelPage??5	      .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??377* ?6   ?? 5      $	??73* ?6   .+?5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridHotels??5         AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$! Название отеля??6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6V   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   ?? *name+6b     5      $% Количество звёзд??6%   $	 150 6`    6?   ?? *countofstars+6n     5      $! Название отеля??6%   $	 250 6]    6=   ?? *countrycode+6k   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)   	   CellTemplate	 5      ?? 5      .R?5      ?? $??
ButtonEdit??6=   -   5        $ ??Редактировать??5   %   6j   5      5      5      ?? 5   
   -   5        
 ??Name$
 	ButtonAdd??5      $??Добавить??6$   $
??Left=?67   $??1??6R   $??Center=?6_   6z   ?? 5   
   -   5        $
 ButtonDelete??5      $??Удалить??6'   $??Right=?69   $??1??6U   $??Center=?6b   6}   5!      5"      