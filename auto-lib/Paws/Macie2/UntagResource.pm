
package Paws::Macie2::UntagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'tagKeys', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UntagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UntagResource - Arguments for method UntagResource on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UntagResourceResponse = $macie2->UntagResource(
      ResourceArn => 'My__string',
      TagKeys     => [ 'My__string', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the classification job, custom data
identifier, findings filter, or member account.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The key of the tag to remove from the resource. To remove multiple
tags, append the tagKeys parameter and argument for each additional tag
to remove, separated by an ampersand (&).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

