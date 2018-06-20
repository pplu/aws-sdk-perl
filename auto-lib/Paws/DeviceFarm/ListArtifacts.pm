
package Paws::DeviceFarm::ListArtifacts;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListArtifacts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListArtifactsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListArtifacts - Arguments for method ListArtifacts on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListArtifacts on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListArtifacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListArtifacts.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To list artifacts for a resource
    # The following example lists screenshot artifacts for a specific run.
    my $ListArtifactsResult = $devicefarm->ListArtifacts(
      {
        'Arn' =>
          'arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456',
        'Type' => 'SCREENSHOT'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListArtifacts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Run, Job, Suite, or Test ARN.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 B<REQUIRED> Type => Str

The artifacts' type.

Allowed values include:

=over

=item *

FILE: The artifacts are files.

=item *

LOG: The artifacts are logs.

=item *

SCREENSHOT: The artifacts are screenshots.

=back


Valid values are: C<"SCREENSHOT">, C<"FILE">, C<"LOG">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListArtifacts in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

