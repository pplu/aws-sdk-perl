
package Paws::MediaConvert::UntagResource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tagKeys');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/tags/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::UntagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::UntagResource - Arguments for method UntagResource on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $UntagResourceResponse = $mediaconvert->UntagResource(
      Arn     => 'My__string',
      TagKeys => [ 'My__string', ... ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the resource that you want to remove
tags from. To get the ARN, send a GET request with the resource name.



=head2 TagKeys => ArrayRef[Str|Undef]

The keys of the tags that you want to remove from the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

