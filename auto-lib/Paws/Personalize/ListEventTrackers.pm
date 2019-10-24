# Generated from json/callargs_class.tt

package Paws::Personalize::ListEventTrackers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Personalize::Types qw//;
  has DatasetGroupArn => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListEventTrackers');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::ListEventTrackersResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DatasetGroupArn' => {
                                      'type' => 'Str'
                                    },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DatasetGroupArn' => 'datasetGroupArn',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListEventTrackers - Arguments for method ListEventTrackers on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventTrackers on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListEventTrackers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventTrackers.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListEventTrackersResponse = $personalize->ListEventTrackers(
      DatasetGroupArn => 'MyArn',          # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $EventTrackers = $ListEventTrackersResponse->EventTrackers;
    my $NextToken     = $ListEventTrackersResponse->NextToken;

    # Returns a L<Paws::Personalize::ListEventTrackersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListEventTrackers>

=head1 ATTRIBUTES


=head2 DatasetGroupArn => Str

The ARN of a dataset group used to filter the response.



=head2 MaxResults => Int

The maximum number of event trackers to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListEventTrackers> for
getting the next set of event trackers (if they exist).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventTrackers in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

