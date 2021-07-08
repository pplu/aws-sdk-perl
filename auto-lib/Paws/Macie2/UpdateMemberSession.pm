
package Paws::Macie2::UpdateMemberSession;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMemberSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/macie/members/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateMemberSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateMemberSession - Arguments for method UpdateMemberSession on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMemberSession on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateMemberSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMemberSession.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateMemberSessionResponse = $macie2->UpdateMemberSession(
      Id     => 'My__string',
      Status => 'PAUSED',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateMemberSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource or account that the
request applies to.



=head2 B<REQUIRED> Status => Str

Specifies the new status for the account. Valid values are: ENABLED,
resume all Amazon Macie activities for the account; and, PAUSED,
suspend all Macie activities for the account.

Valid values are: C<"PAUSED">, C<"ENABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMemberSession in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

