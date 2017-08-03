
package Paws::SimpleWorkflow::DomainDetail;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::SimpleWorkflow::DomainConfiguration', traits => ['NameInRequest'], request_name => 'configuration' , required => 1);
  has DomainInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::DomainInfo', traits => ['NameInRequest'], request_name => 'domainInfo' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainDetail

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::SimpleWorkflow::DomainConfiguration>

The domain configuration. Currently, this includes only the domain's
retention period.


=head2 B<REQUIRED> DomainInfo => L<Paws::SimpleWorkflow::DomainInfo>

The basic information about a domain, such as its name, status, and
description.


=head2 _request_id => Str


=cut

1;