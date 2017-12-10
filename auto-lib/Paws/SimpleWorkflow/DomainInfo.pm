package Paws::SimpleWorkflow::DomainInfo;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::DomainInfo object:

  $service_obj->Method(Att1 => { Description => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::DomainInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Contains general information about a domain.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the domain provided through RegisterDomain.


=head2 B<REQUIRED> Name => Str

  The name of the domain. This name is unique within the account.


=head2 B<REQUIRED> Status => Str

  The status of the domain:

=over

=item *

C<REGISTERED> E<ndash> The domain is properly registered and available.
You can use this domain for registering types and creating new workflow
executions.

=item *

C<DEPRECATED> E<ndash> The domain was deprecated using DeprecateDomain,
but is still in use. You should not create new workflow executions in
this domain.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

