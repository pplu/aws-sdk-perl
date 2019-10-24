
package Paws::Kafka::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Kafka::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/tags/{resourceArn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

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
  'ParamInURI' => {
                    'ResourceArn' => 'resourceArn'
                  },
  'ParamInQuery' => {
                      'TagKeys' => 'tagKeys'
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

Paws::Kafka::UntagResource - Arguments for method UntagResource on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    $kafka->UntagResource(
      ResourceArn => 'My__string',
      TagKeys     => [ 'My__string', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the resource
that's associated with the tags.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

Tag keys must be unique for a given cluster. In addition, the following
restrictions apply:

=over

=item *

Each tag key must be unique. If you add a tag with a key that's already
in use, your new tag overwrites the existing key-value pair.

=item *

You can't start a tag key with aws: because this prefix is reserved for
use by AWS. AWS creates tags that begin with this prefix on your
behalf, but you can't edit or delete them.

=item *

Tag keys must be between 1 and 128 Unicode characters in length.

=item *

Tag keys must consist of the following characters: Unicode letters,
digits, white space, and the following special characters: _ . / = + -
@.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

