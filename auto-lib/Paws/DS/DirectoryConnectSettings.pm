package Paws::DS::DirectoryConnectSettings;
  use Moose;
  has CustomerDnsIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has CustomerUserName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DirectoryConnectSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::DirectoryConnectSettings object:

  $service_obj->Method(Att1 => { CustomerDnsIps => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::DirectoryConnectSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerDnsIps

=head1 DESCRIPTION

Contains information for the ConnectDirectory operation when an AD
Connector directory is being created.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerDnsIps => ArrayRef[Str|Undef]

  A list of one or more IP addresses of DNS servers or domain controllers
in the on-premises directory.


=head2 B<REQUIRED> CustomerUserName => Str

  The user name of an account in the on-premises directory that is used
to connect to the directory. This account must have the following
permissions:

=over

=item *

Read users and groups

=item *

Create computer objects

=item *

Join computers to the domain

=back



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

  A list of subnet identifiers in the VPC in which the AD Connector is
created.


=head2 B<REQUIRED> VpcId => Str

  The identifier of the VPC in which the AD Connector is created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

