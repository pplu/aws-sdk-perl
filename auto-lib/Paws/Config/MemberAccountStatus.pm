package Paws::Config::MemberAccountStatus;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has LastUpdateTime => (is => 'ro', isa => 'Str');
  has MemberAccountRuleStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::MemberAccountStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::MemberAccountStatus object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., MemberAccountRuleStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::MemberAccountStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  


=head2 B<REQUIRED> ConfigRuleName => Str

  


=head2 ErrorCode => Str

  


=head2 ErrorMessage => Str

  


=head2 LastUpdateTime => Str

  


=head2 B<REQUIRED> MemberAccountRuleStatus => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

