
package Paws::DataExchange::UpdateRevision;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::DataExchange::Types qw//;
  has Comment => (is => 'ro', isa => Str, predicate => 1);
  has DataSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Finalized => (is => 'ro', isa => Bool, predicate => 1);
  has RevisionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateRevision');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/data-sets/{DataSetId}/revisions/{RevisionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataExchange::UpdateRevisionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DataSetId' => 'DataSetId',
                    'RevisionId' => 'RevisionId'
                  },
  'IsRequired' => {
                    'DataSetId' => 1,
                    'RevisionId' => 1
                  },
  'types' => {
               'DataSetId' => {
                                'type' => 'Str'
                              },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'Comment' => {
                              'type' => 'Str'
                            },
               'Finalized' => {
                                'type' => 'Bool'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::UpdateRevision - Arguments for method UpdateRevision on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRevision on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method UpdateRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRevision.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $UpdateRevisionResponse = $dataexchange->UpdateRevision(
      DataSetId  => 'My__string',
      RevisionId => 'My__string',
      Comment    => 'My__stringMin0Max16384',    # OPTIONAL
      Finalized  => 1,                           # OPTIONAL
    );

    # Results:
    my $Arn       = $UpdateRevisionResponse->Arn;
    my $Comment   = $UpdateRevisionResponse->Comment;
    my $CreatedAt = $UpdateRevisionResponse->CreatedAt;
    my $DataSetId = $UpdateRevisionResponse->DataSetId;
    my $Finalized = $UpdateRevisionResponse->Finalized;
    my $Id        = $UpdateRevisionResponse->Id;
    my $SourceId  = $UpdateRevisionResponse->SourceId;
    my $UpdatedAt = $UpdateRevisionResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::UpdateRevisionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/UpdateRevision>

=head1 ATTRIBUTES


=head2 Comment => Str

An optional comment about the revision.



=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 Finalized => Bool

Finalizing a revision tells AWS Data Exchange that your changes to the
assets in the revision are complete. After it's in this read-only
state, you can publish the revision to your products.



=head2 B<REQUIRED> RevisionId => Str

The unique identifier for a revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRevision in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

