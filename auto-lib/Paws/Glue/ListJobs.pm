# Generated from json/callargs_class.tt

package Paws::Glue::ListJobs;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Glue::Types qw/Glue_TagsMap/;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Glue_TagsMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListJobs');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::ListJobsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Tags' => {
                           'type' => 'Glue_TagsMap',
                           'class' => 'Paws::Glue::TagsMap'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListJobs - Arguments for method ListJobs on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListJobsResponse = $glue->ListJobs(
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
      Tags       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $JobNames  = $ListJobsResponse->JobNames;
    my $NextToken = $ListJobsResponse->NextToken;

    # Returns a L<Paws::Glue::ListJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of a list to return.



=head2 NextToken => Str

A continuation token, if this is a continuation request.



=head2 Tags => Glue_TagsMap

Specifies to return only these tagged resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

