package Paws::SimpleWorkflow::DomainInfo;
  use Moose;
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::DomainInfo object:

  $service_obj->Method(Att1 => { description => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::DomainInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->description

=head1 ATTRIBUTES

=head2 description => Str

  The description of the domain provided through RegisterDomain.

=head2 B<REQUIRED> name => Str

  The name of the domain. This name is unique within the account.

=head2 B<REQUIRED> status => Str

  The status of the domain:

=over

=item * B<REGISTERED>: The domain is properly registered and available.
You can use this domain for registering types and creating new workflow
executions.

=item * B<DEPRECATED>: The domain was deprecated using DeprecateDomain,
but is still in use. You should not create new workflow executions in
this domain.

=back



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

