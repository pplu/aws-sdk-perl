# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_ResourceTag/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SimpleWorkflow_ResourceTag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[SimpleWorkflow_ResourceTag]',
                           'class' => 'Paws::SimpleWorkflow::ResourceTag'
                         },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'Tags' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ResourceArn' => 'resourceArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::TagResource - Arguments for method TagResource on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    $swf->TagResource(
      ResourceArn => 'MyArn',
      Tags        => [
        {
          Key   => 'MyResourceTagKey',      # min: 1, max: 128
          Value => 'MyResourceTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) for the Amazon SWF domain.



=head2 B<REQUIRED> Tags => ArrayRef[SimpleWorkflow_ResourceTag]

The list of tags to add to a domain.

Tags may only contain unicode letters, digits, whitespace, or these
symbols: C<_ . : / = + - @>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

