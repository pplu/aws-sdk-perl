# Generated from json/callargs_class.tt

package Paws::Glue::ListTriggers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Glue::Types qw/Glue_TagsMap/;
  has DependentJobName => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Glue_TagsMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTriggers');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::ListTriggersResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Glue::TagsMap',
                           'type' => 'Glue_TagsMap'
                         },
               'DependentJobName' => {
                                       'type' => 'Str'
                                     },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
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

Paws::Glue::ListTriggers - Arguments for method ListTriggers on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTriggers on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListTriggers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTriggers.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListTriggersResponse = $glue->ListTriggers(
      DependentJobName => 'MyNameString',       # OPTIONAL
      MaxResults       => 1,                    # OPTIONAL
      NextToken        => 'MyGenericString',    # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListTriggersResponse->NextToken;
    my $TriggerNames = $ListTriggersResponse->TriggerNames;

    # Returns a L<Paws::Glue::ListTriggersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListTriggers>

=head1 ATTRIBUTES


=head2 DependentJobName => Str

The name of the job for which to retrieve triggers. The trigger that
can start this job is returned. If there is no such trigger, all
triggers are returned.



=head2 MaxResults => Int

The maximum size of a list to return.



=head2 NextToken => Str

A continuation token, if this is a continuation request.



=head2 Tags => Glue_TagsMap

Specifies to return only these tagged resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTriggers in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

