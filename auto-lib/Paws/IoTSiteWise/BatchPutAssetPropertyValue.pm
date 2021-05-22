
package Paws::IoTSiteWise::BatchPutAssetPropertyValue;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::PutAssetPropertyValueEntry]', traits => ['NameInRequest'], request_name => 'entries', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutAssetPropertyValue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/properties');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::BatchPutAssetPropertyValueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::BatchPutAssetPropertyValue - Arguments for method BatchPutAssetPropertyValue on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutAssetPropertyValue on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method BatchPutAssetPropertyValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutAssetPropertyValue.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $BatchPutAssetPropertyValueResponse =
      $iotsitewise->BatchPutAssetPropertyValue(
      Entries => [
        {
          EntryId        => 'MyEntryId',    # min: 1, max: 64
          PropertyValues => [
            {
              Timestamp => {
                TimeInSeconds => 1,         # min: 1, max: 31556889864403199
                OffsetInNanos => 1,         # max: 999999999; OPTIONAL
              },
              Value => {
                BooleanValue => 1,                               # OPTIONAL
                DoubleValue  => 1,                               # OPTIONAL
                IntegerValue => 1,                               # OPTIONAL
                StringValue  => 'MyPropertyValueStringValue',    # OPTIONAL
              },
              Quality => 'GOOD',    # values: GOOD, BAD, UNCERTAIN; OPTIONAL
            },
            ...
          ],
          AssetId       => 'MyID',                 # min: 36, max: 36; OPTIONAL
          PropertyAlias => 'MyAssetPropertyAlias', # min: 1, max: 2048; OPTIONAL
          PropertyId    => 'MyID',                 # min: 36, max: 36; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $ErrorEntries = $BatchPutAssetPropertyValueResponse->ErrorEntries;

    # Returns a L<Paws::IoTSiteWise::BatchPutAssetPropertyValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/BatchPutAssetPropertyValue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::IoTSiteWise::PutAssetPropertyValueEntry>]

The list of asset property value entries for the batch put request. You
can specify up to 10 entries per request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutAssetPropertyValue in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

