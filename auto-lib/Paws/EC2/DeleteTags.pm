
package Paws::EC2::DeleteTags;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceId' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', traits => ['NameInRequest'], request_name => 'tag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTags - Arguments for method DeleteTags on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTags on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTags.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To delete a tag from a resource
    # This example deletes the tag Stack=test from the specified image.
    $ec2->DeleteTags(
      {
        'Resources' => ['ami-78a54011'],
        'Tags'      => [

          {
            'Key'   => 'Stack',
            'Value' => 'test'
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteTags>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Resources => ArrayRef[Str|Undef]

The IDs of one or more resources, separated by spaces.

Constraints: Up to 1000 resource IDs. We recommend breaking up this
request into smaller batches.



=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

One or more tags to delete. Specify a tag key and an optional tag value
to delete specific tags. If you specify a tag key without a tag value,
we delete any tag with this key regardless of its value. If you specify
a tag key with an empty string as the tag value, we delete the tag only
if its value is an empty string.

If you omit this parameter, we delete all user-defined tags for the
specified resources. We do not delete AWS-generated tags (tags that
have the C<aws:> prefix).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTags in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

