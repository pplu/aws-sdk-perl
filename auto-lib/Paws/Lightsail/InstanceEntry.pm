package Paws::Lightsail::InstanceEntry;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest'], required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest'], required => 1);
  has PortInfoSource => (is => 'ro', isa => 'Str', request_name => 'portInfoSource', traits => ['NameInRequest'], required => 1);
  has SourceName => (is => 'ro', isa => 'Str', request_name => 'sourceName', traits => ['NameInRequest'], required => 1);
  has UserData => (is => 'ro', isa => 'Str', request_name => 'userData', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceEntry object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., UserData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Describes the Amazon Elastic Compute Cloud instance and related
resources to be created using the C<create cloud formation stack>
operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

  The Availability Zone for the new Amazon EC2 instance.


=head2 B<REQUIRED> InstanceType => Str

  The instance type (e.g., C<t2.micro>) to use for the new Amazon EC2
instance.


=head2 B<REQUIRED> PortInfoSource => Str

  The port configuration to use for the new Amazon EC2 instance.

The following configuration options are available:

=over

=item *

DEFAULT E<mdash> Use the default firewall settings from the image.

=item *

INSTANCE E<mdash> Use the firewall settings from the source Lightsail
instance.

=item *

NONE E<mdash> Default to Amazon EC2.

=item *

CLOSED E<mdash> All ports closed.

=back



=head2 B<REQUIRED> SourceName => Str

  The name of the export snapshot record, which contains the exported
Lightsail instance snapshot that will be used as the source of the new
Amazon EC2 instance.

Use the C<get export snapshot records> operation to get a list of
export snapshot records that you can use to create a CloudFormation
stack.


=head2 UserData => Str

  A launch script you can create that configures a server with additional
user data. For example, you might want to run C<apt-get -y update>.

Depending on the machine image you choose, the command to get software
on your instance varies. Amazon Linux and CentOS use C<yum>, Debian and
Ubuntu use C<apt-get>, and FreeBSD uses C<pkg>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

