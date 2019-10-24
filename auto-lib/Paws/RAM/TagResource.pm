
package Paws::RAM::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RAM::Types qw/RAM_Tag/;
  has ResourceShareArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RAM_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/tagresource');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RAM::TagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceShareArn' => {
                                       'type' => 'Str'
                                     },
               'Tags' => {
                           'class' => 'Paws::RAM::Tag',
                           'type' => 'ArrayRef[RAM_Tag]'
                         }
             },
  'NameInRequest' => {
                       'ResourceShareArn' => 'resourceShareArn',
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'ResourceShareArn' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::TagResource - Arguments for method TagResource on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $TagResourceResponse = $ram->TagResource(
      ResourceShareArn => 'MyString',
      Tags             => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceShareArn => Str

The Amazon Resource Name (ARN) of the resource share.



=head2 B<REQUIRED> Tags => ArrayRef[RAM_Tag]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

