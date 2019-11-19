# Generated from json/callargs_class.tt

package Paws::Personalize::ListDatasets;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Personalize::Types qw//;
  has DatasetGroupArn => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListDatasets');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::ListDatasetsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DatasetGroupArn' => 'datasetGroupArn',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'DatasetGroupArn' => {
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

Paws::Personalize::ListDatasets - Arguments for method ListDatasets on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasets on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListDatasets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasets.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListDatasetsResponse = $personalize->ListDatasets(
      DatasetGroupArn => 'MyArn',          # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Datasets  = $ListDatasetsResponse->Datasets;
    my $NextToken = $ListDatasetsResponse->NextToken;

    # Returns a L<Paws::Personalize::ListDatasetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListDatasets>

=head1 ATTRIBUTES


=head2 DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the dataset group that contains the
datasets to list.



=head2 MaxResults => Int

The maximum number of datasets to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListDatasetImportJobs> for
getting the next set of dataset import jobs (if they exist).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasets in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

