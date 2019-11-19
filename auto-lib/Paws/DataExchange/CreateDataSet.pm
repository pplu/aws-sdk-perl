
package Paws::DataExchange::CreateDataSet;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw/DataExchange_MapOf__string/;
  has AssetType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => DataExchange_MapOf__string, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDataSet');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/data-sets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataExchange::CreateDataSetResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1,
                    'AssetType' => 1,
                    'Description' => 1
                  },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::DataExchange::MapOf__string',
                           'type' => 'DataExchange_MapOf__string'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'AssetType' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::CreateDataSet - Arguments for method CreateDataSet on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSet on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method CreateDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSet.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $CreateDataSetResponse = $dataexchange->CreateDataSet(
      AssetType   => 'S3_SNAPSHOT',
      Description => 'MyDescription',
      Name        => 'MyName',
      Tags        => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn           = $CreateDataSetResponse->Arn;
    my $AssetType     = $CreateDataSetResponse->AssetType;
    my $CreatedAt     = $CreateDataSetResponse->CreatedAt;
    my $Description   = $CreateDataSetResponse->Description;
    my $Id            = $CreateDataSetResponse->Id;
    my $Name          = $CreateDataSetResponse->Name;
    my $Origin        = $CreateDataSetResponse->Origin;
    my $OriginDetails = $CreateDataSetResponse->OriginDetails;
    my $SourceId      = $CreateDataSetResponse->SourceId;
    my $Tags          = $CreateDataSetResponse->Tags;
    my $UpdatedAt     = $CreateDataSetResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::CreateDataSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/CreateDataSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetType => Str

The type of file your data is stored in. Currently, the supported asset
type is S3_SNAPSHOT.

Valid values are: C<"S3_SNAPSHOT">

=head2 B<REQUIRED> Description => Str

A description for the data set. This value can be up to 16,348
characters long.



=head2 B<REQUIRED> Name => Str

The name of the data set.



=head2 Tags => DataExchange_MapOf__string

A data set tag is an optional label that you can assign to a data set
when you create it. Each tag consists of a key and an optional value,
both of which you define. When you use tagging, you can also use
tag-based access control in IAM policies to control access to these
data sets and revisions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSet in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

