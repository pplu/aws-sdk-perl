
package Paws::Transfer::TagResource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::TagResource - Arguments for method TagResource on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    $transfer->TagResource(
      Arn  => 'MyArn',
      Tags => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

An Amazon Resource Name (ARN) for a specific AWS resource, such as a
server, user, or role.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs assigned to ARNs that you can use to group and search
for resources by type. You can attach this metadata to user accounts
for any purpose.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

