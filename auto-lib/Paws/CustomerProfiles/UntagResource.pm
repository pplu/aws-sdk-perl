
package Paws::CustomerProfiles::UntagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'tagKeys', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::UntagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::UntagResource - Arguments for method UntagResource on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $UntagResourceResponse = $profile->UntagResource(
      ResourceArn => 'MyTagArn',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource from which you are removing tags.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The list of tag keys to remove from the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

