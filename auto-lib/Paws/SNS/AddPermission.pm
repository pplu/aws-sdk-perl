
package Paws::SNS::AddPermission;
  use Moose;
  has ActionName => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has AWSAccountId => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::AddPermission - Arguments for method AddPermission on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddPermission on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method AddPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddPermission.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->AddPermission(
      AWSAccountId => [ 'Mydelegate', ... ],
      ActionName   => [ 'Myaction',   ... ],
      Label        => 'Mylabel',
      TopicArn     => 'MytopicARN',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/AddPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => ArrayRef[Str|Undef]

The action you want to allow for the specified principal(s).

Valid values: any Amazon SNS action name.



=head2 B<REQUIRED> AWSAccountId => ArrayRef[Str|Undef]

The AWS account IDs of the users (principals) who will be given access
to the specified actions. The users must have AWS accounts, but do not
need to be signed up for this service.



=head2 B<REQUIRED> Label => Str

A unique identifier for the new policy statement.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the topic whose access control policy you wish to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddPermission in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

