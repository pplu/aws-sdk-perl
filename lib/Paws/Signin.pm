
use Paws::API;


package Paws::Signin {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'signin.aws');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-08');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::SigninEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::NoSignature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::SigninCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub GetSigninToken {
    my $self = shift;
    return $self->do_call('Paws::Signin::GetSigninToken', @_);
  }
  sub Login {
    my $self = shift;
    return $self->do_call('Paws::Signin::Login', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signin - Perl Interface to AWS Console Signin service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=cut
