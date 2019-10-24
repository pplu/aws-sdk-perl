
package Paws::RAM::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::RAM::Types qw//;
  has ResourceShareArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/untagresource');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RAM::UntagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'ResourceShareArn' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'TagKeys' => 'tagKeys',
                       'ResourceShareArn' => 'resourceShareArn'
                     },
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceShareArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::UntagResource - Arguments for method UntagResource on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $UntagResourceResponse = $ram->UntagResource(
      ResourceShareArn => 'MyString',
      TagKeys          => [ 'MyTagKey', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceShareArn => Str

The Amazon Resource Name (ARN) of the resource share.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag keys of the tags to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

