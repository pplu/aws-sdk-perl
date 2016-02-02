package Paws::Net::CallerRole;
  use Moose::Role;

  requires 'do_call';
  requires 'caller_to_response';
1;
