
package Paws::MediaConvert::TagResource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaConvert::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/tags');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::TagResource - Arguments for method TagResource on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $TagResourceResponse = $mediaconvert->TagResource(
      Arn  => 'My__string',
      Tags => { 'My__string' => 'My__string', },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the resource that you want to tag. To
get the ARN, send a GET request with the resource name.



=head2 B<REQUIRED> Tags => L<Paws::MediaConvert::__mapOf__string>

The tags that you want to add to the resource. You can tag resources
with a key-value pair or with only a key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

