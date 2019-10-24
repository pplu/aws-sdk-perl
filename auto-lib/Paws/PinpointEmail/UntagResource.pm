
package Paws::PinpointEmail::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::PinpointEmail::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/email/tags');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::PinpointEmail::UntagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInQuery' => {
                      'TagKeys' => 'TagKeys',
                      'ResourceArn' => 'ResourceArn'
                    },
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::UntagResource - Arguments for method UntagResource on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $UntagResourceResponse = $email->UntagResource(
      ResourceArn => 'MyAmazonResourceName',
      TagKeys     => [ 'MyTagKey', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that you want to remove
one or more tags from.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tags (tag keys) that you want to remove from the resource. When you
specify a tag key, the action removes both that key and its associated
tag value.

To remove more than one tag from the resource, append the C<TagKeys>
parameter and argument for each additional tag to remove, separated by
an ampersand. For example:
C</v1/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

