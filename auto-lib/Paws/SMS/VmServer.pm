package Paws::SMS::VmServer;
  use Moose;
  has VmManagerName => (is => 'ro', isa => 'Str', request_name => 'vmManagerName', traits => ['NameInRequest']);
  has VmManagerType => (is => 'ro', isa => 'Str', request_name => 'vmManagerType', traits => ['NameInRequest']);
  has VmName => (is => 'ro', isa => 'Str', request_name => 'vmName', traits => ['NameInRequest']);
  has VmPath => (is => 'ro', isa => 'Str', request_name => 'vmPath', traits => ['NameInRequest']);
  has VmServerAddress => (is => 'ro', isa => 'Paws::SMS::VmServerAddress', request_name => 'vmServerAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::VmServer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::VmServer object:

  $service_obj->Method(Att1 => { VmManagerName => $value, ..., VmServerAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::VmServer object:

  $result = $service_obj->Method(...);
  $result->Att1->VmManagerName

=head1 DESCRIPTION

Object representing a VM server

=head1 ATTRIBUTES


=head2 VmManagerName => Str

  


=head2 VmManagerType => Str

  


=head2 VmName => Str

  


=head2 VmPath => Str

  


=head2 VmServerAddress => L<Paws::SMS::VmServerAddress>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

