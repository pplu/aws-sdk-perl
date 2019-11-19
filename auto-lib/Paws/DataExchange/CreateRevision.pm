
package Paws::DataExchange::CreateRevision;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw/DataExchange_MapOf__string/;
  has Comment => (is => 'ro', isa => Str, predicate => 1);
  has DataSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => DataExchange_MapOf__string, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateRevision');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/data-sets/{DataSetId}/revisions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataExchange::CreateRevisionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DataSetId' => 'DataSetId'
                  },
  'IsRequired' => {
                    'DataSetId' => 1
                  },
  'types' => {
               'Comment' => {
                              'type' => 'Str'
                            },
               'DataSetId' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::DataExchange::MapOf__string',
                           'type' => 'DataExchange_MapOf__string'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::CreateRevision - Arguments for method CreateRevision on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRevision on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method CreateRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRevision.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $CreateRevisionResponse = $dataexchange->CreateRevision(
      DataSetId => 'My__string',
      Comment   => 'My__stringMin0Max16384',             # OPTIONAL
      Tags      => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateRevisionResponse->Arn;
    my $Comment   = $CreateRevisionResponse->Comment;
    my $CreatedAt = $CreateRevisionResponse->CreatedAt;
    my $DataSetId = $CreateRevisionResponse->DataSetId;
    my $Finalized = $CreateRevisionResponse->Finalized;
    my $Id        = $CreateRevisionResponse->Id;
    my $SourceId  = $CreateRevisionResponse->SourceId;
    my $Tags      = $CreateRevisionResponse->Tags;
    my $UpdatedAt = $CreateRevisionResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::CreateRevisionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/CreateRevision>

=head1 ATTRIBUTES


=head2 Comment => Str

An optional comment about the revision.



=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 Tags => DataExchange_MapOf__string

A revision tag is an optional label that you can assign to a revision
when you create it. Each tag consists of a key and an optional value,
both of which you define. When you use tagging, you can also use
tag-based access control in IAM policies to control access to these
data sets and revisions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRevision in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

