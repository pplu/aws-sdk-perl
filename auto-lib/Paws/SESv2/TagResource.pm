
package Paws::SESv2::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_Tag/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SESv2_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/tags');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::TagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1,
                    'ResourceArn' => 1
                  },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::SESv2::Tag',
                           'type' => 'ArrayRef[SESv2_Tag]'
                         },
               'ResourceArn' => {
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

Paws::SESv2::TagResource - Arguments for method TagResource on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $TagResourceResponse = $email->TagResource(
      ResourceArn => 'MyAmazonResourceName',
      Tags        => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that you want to add one
or more tags to.



=head2 B<REQUIRED> Tags => ArrayRef[SESv2_Tag]

A list of the tags that you want to add to the resource. A tag consists
of a required tag key (C<Key>) and an associated tag value (C<Value>).
The maximum length of a tag key is 128 characters. The maximum length
of a tag value is 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

