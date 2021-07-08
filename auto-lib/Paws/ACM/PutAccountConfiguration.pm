
package Paws::ACM::PutAccountConfiguration;
  use Moose;
  has ExpiryEvents => (is => 'ro', isa => 'Paws::ACM::ExpiryEventsConfiguration');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::PutAccountConfiguration - Arguments for method PutAccountConfiguration on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountConfiguration on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method PutAccountConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountConfiguration.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    $acm->PutAccountConfiguration(
      IdempotencyToken => 'MyIdempotencyToken',
      ExpiryEvents     => {
        DaysBeforeExpiry => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/PutAccountConfiguration>

=head1 ATTRIBUTES


=head2 ExpiryEvents => L<Paws::ACM::ExpiryEventsConfiguration>

Specifies expiration events associated with an account.



=head2 B<REQUIRED> IdempotencyToken => Str

Customer-chosen string used to distinguish between calls to
C<PutAccountConfiguration>. Idempotency tokens time out after one hour.
If you call C<PutAccountConfiguration> multiple times with the same
unexpired idempotency token, ACM treats it as the same request and
returns the original result. If you change the idempotency token for
each call, ACM treats each call as a new request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountConfiguration in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

