
package Paws::SageMaker::ListDeviceFleets;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeviceFleets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListDeviceFleetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListDeviceFleets - Arguments for method ListDeviceFleets on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeviceFleets on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListDeviceFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeviceFleets.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListDeviceFleetsResponse = $api . sagemaker->ListDeviceFleets(
      CreationTimeAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      NameContains           => 'MyNameContains',         # OPTIONAL
      NextToken              => 'MyNextToken',            # OPTIONAL
      SortBy                 => 'NAME',                   # OPTIONAL
      SortOrder              => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $DeviceFleetSummaries = $ListDeviceFleetsResponse->DeviceFleetSummaries;
    my $NextToken            = $ListDeviceFleetsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListDeviceFleetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListDeviceFleets>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Filter fleets where packaging job was created after specified time.



=head2 CreationTimeBefore => Str

Filter fleets where the edge packaging job was created before specified
time.



=head2 LastModifiedTimeAfter => Str

Select fleets where the job was updated after X



=head2 LastModifiedTimeBefore => Str

Select fleets where the job was updated before X



=head2 MaxResults => Int

The maximum number of results to select.



=head2 NameContains => Str

Filter for fleets containing this name in their fleet device name.



=head2 NextToken => Str

The response from the last list when returning a list large enough to
need tokening.



=head2 SortBy => Str

The column to sort by.

Valid values are: C<"NAME">, C<"CREATION_TIME">, C<"LAST_MODIFIED_TIME">

=head2 SortOrder => Str

What direction to sort in.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeviceFleets in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

