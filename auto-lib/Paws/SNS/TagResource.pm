# Generated from callargs_class.tt

package Paws::SNS::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SNS::Types qw/SNS_Tag/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SNS_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SNS::TagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'TagResourceResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[SNS_Tag]',
                           'class' => 'Paws::SNS::Tag'
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

Paws::SNS::TagResource - Arguments for method TagResource on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $TagResourceResponse = $sns->TagResource(
      ResourceArn => 'MyAmazonResourceName',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the topic to which to add tags.



=head2 B<REQUIRED> Tags => ArrayRef[SNS_Tag]

The tags to be added to the specified topic. A tag consists of a
required key and an optional value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

