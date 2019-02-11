package Paws::Datasync::OnPremConfig;
  use Moose;
  has AgentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::OnPremConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::OnPremConfig object:

  $service_obj->Method(Att1 => { AgentArns => $value, ..., AgentArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::OnPremConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentArns

=head1 DESCRIPTION

A list of Amazon Resource Names (ARNs) of agents to use for a Network
File System (NFS) location.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentArns => ArrayRef[Str|Undef]

  ARNs)of the agents to use for an NFS location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

