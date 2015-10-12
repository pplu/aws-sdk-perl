
package Paws::SimpleWorkflow::DomainDetail;
  use Moose;
  has configuration => (is => 'ro', isa => 'Paws::SimpleWorkflow::DomainConfiguration', required => 1);
  has domainInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::DomainInfo', required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainDetail

=head1 ATTRIBUTES

=head2 B<REQUIRED> configuration => L<Paws::SimpleWorkflow::DomainConfiguration>

  
=head2 B<REQUIRED> domainInfo => L<Paws::SimpleWorkflow::DomainInfo>

  


=cut

1;