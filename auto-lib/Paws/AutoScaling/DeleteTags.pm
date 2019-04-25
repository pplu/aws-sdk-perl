
package Paws::AutoScaling::DeleteTags;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DeleteTags - Arguments for method DeleteTags on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTags on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DeleteTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTags.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To delete a tag from an Auto Scaling group
    # This example deletes the specified tag from the specified Auto Scaling
    # group.
    $autoscaling->DeleteTags(
      {
        'Tags' => [

          {
            'Key'          => 'Dept',
            'ResourceId'   => 'my-auto-scaling-group',
            'ResourceType' => 'auto-scaling-group',
            'Value'        => 'Research'
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DeleteTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::AutoScaling::Tag>]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTags in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

