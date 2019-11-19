# Generated from json/callargs_class.tt

package Paws::DynamoDB::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_Tag/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DynamoDB_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::DynamoDB::Tag',
                           'type' => 'ArrayRef[DynamoDB_Tag]'
                         },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Tags' => 1,
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TagResource - Arguments for method TagResource on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    $dynamodb->TagResource(
      ResourceArn => 'MyResourceArnString',
      Tags        => [
        {
          Key   => 'MyTagKeyString',      # min: 1, max: 128
          Value => 'MyTagValueString',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

Identifies the Amazon DynamoDB resource to which tags should be added.
This value is an Amazon Resource Name (ARN).



=head2 B<REQUIRED> Tags => ArrayRef[DynamoDB_Tag]

The tags to be assigned to the Amazon DynamoDB resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

