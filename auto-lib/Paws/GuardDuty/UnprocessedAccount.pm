package Paws::GuardDuty::UnprocessedAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest'], required => 1);
  has Result => (is => 'ro', isa => 'Str', request_name => 'result', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UnprocessedAccount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::UnprocessedAccount object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Result => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::UnprocessedAccount object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

An object containing the unprocessed account and a result string
explaining why it was unprocessed.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  AWS Account ID.


=head2 B<REQUIRED> Result => Str

  A reason why the account hasn't been processed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

