
package Paws::Lightsail::UntagResource;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tagKeys' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UntagResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UntagResource - Arguments for method UntagResource on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UntagResourceResult = $lightsail->UntagResource(
      ResourceName => 'MyResourceName',
      TagKeys      => [ 'MyTagKey', ... ],

    );

    # Results:
    my $Operations = $UntagResourceResult->Operations;

    # Returns a L<Paws::Lightsail::UntagResourceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The name of the resource from which you are removing a tag.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag keys to delete from the specified resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

