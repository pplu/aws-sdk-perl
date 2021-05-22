
package Paws::Macie2::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::TagResource - Arguments for method TagResource on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $TagResourceResponse = $macie2->TagResource(
      ResourceArn => 'My__string',
      Tags        => { 'My__string' => 'My__string', },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the classification job, custom data
identifier, findings filter, or member account.



=head2 B<REQUIRED> Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that specifies the tags to associate with the
resource.

A resource can have a maximum of 50 tags. Each tag consists of a tag
key and an associated tag value. The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

