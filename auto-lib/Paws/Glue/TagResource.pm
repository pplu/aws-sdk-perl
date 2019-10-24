# Generated from json/callargs_class.tt

package Paws::Glue::TagResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_TagsMap/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagsToAdd => (is => 'ro', isa => Glue_TagsMap, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::TagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'TagsToAdd' => {
                                'class' => 'Paws::Glue::TagsMap',
                                'type' => 'Glue_TagsMap'
                              }
             },
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'TagsToAdd' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TagResource - Arguments for method TagResource on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $TagResourceResponse = $glue->TagResource(
      ResourceArn => 'MyGlueResourceArn',
      TagsToAdd   => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the AWS Glue resource to which to add the tags. For more
information about AWS Glue resource ARNs, see the AWS Glue ARN string
pattern
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id).



=head2 B<REQUIRED> TagsToAdd => Glue_TagsMap

Tags to add to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

