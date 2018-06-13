
package Paws::CloudHSM::RemoveTagsFromResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has TagKeyList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::RemoveTagsFromResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::RemoveTagsFromResource - Arguments for method RemoveTagsFromResource on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromResource on the
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method RemoveTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromResource.

=head1 SYNOPSIS

    my $cloudhsm = Paws->service('CloudHSM');
    my $RemoveTagsFromResourceResponse = $cloudhsm->RemoveTagsFromResource(
      ResourceArn => 'MyString',
      TagKeyList  => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

    # Results:
    my $Status = $RemoveTagsFromResourceResponse->Status;

    # Returns a L<Paws::CloudHSM::RemoveTagsFromResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/RemoveTagsFromResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the AWS CloudHSM resource.



=head2 B<REQUIRED> TagKeyList => ArrayRef[Str|Undef]

The tag key or keys to remove.

Specify only the tag key to remove (not the value). To overwrite the
value for an existing tag, use AddTagsToResource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromResource in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

