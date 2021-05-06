
package Paws::DS::UpdateRadius;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has RadiusSettings => (is => 'ro', isa => 'Paws::DS::RadiusSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRadius');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::UpdateRadiusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::UpdateRadius - Arguments for method UpdateRadius on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRadius on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method UpdateRadius.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRadius.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $UpdateRadiusResult = $ds->UpdateRadius(
      DirectoryId    => 'MyDirectoryId',
      RadiusSettings => {
        AuthenticationProtocol =>
          'PAP',    # values: PAP, CHAP, MS-CHAPv1, MS-CHAPv2; OPTIONAL
        DisplayLabel => 'MyRadiusDisplayLabel',    # min: 1, max: 64; OPTIONAL
        RadiusPort    => 1,    # min: 1025, max: 65535; OPTIONAL
        RadiusRetries => 1,    # max: 10; OPTIONAL
        RadiusServers => [
          'MyServer', ...      # min: 1, max: 256
        ],                     # OPTIONAL
        RadiusTimeout   => 1,                       # min: 1, max: 20; OPTIONAL
        SharedSecret    => 'MyRadiusSharedSecret',  # min: 8, max: 512; OPTIONAL
        UseSameUsername => 1,                       # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/UpdateRadius>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory for which to update the RADIUS server
information.



=head2 B<REQUIRED> RadiusSettings => L<Paws::DS::RadiusSettings>

A RadiusSettings object that contains information about the RADIUS
server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRadius in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

