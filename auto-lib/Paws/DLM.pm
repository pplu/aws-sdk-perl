package Paws::DLM;
  use Moose;
  sub service { 'dlm' }
  sub signing_name { 'dlm' }
  sub version { '2018-01-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::CreateLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::DeleteLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecyclePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::GetLifecyclePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::GetLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::UpdateLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateLifecyclePolicy DeleteLifecyclePolicy GetLifecyclePolicies GetLifecyclePolicy UpdateLifecyclePolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM - Perl Interface to AWS Amazon Data Lifecycle Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DLM');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Data Lifecycle Manager

With Amazon Data Lifecycle Manager, you can manage the lifecycle of
your AWS resources. You create lifecycle policies, which are used to
automate operations on the specified resources.

Amazon DLM supports Amazon EBS volumes and snapshots. For information
about using Amazon DLM with Amazon EBS, see Automating the Amazon EBS
Snapshot Lifecycle
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html)
in the I<Amazon EC2 User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12>


=head1 METHODS

=head2 CreateLifecyclePolicy

=over

=item Description => Str

=item ExecutionRoleArn => Str

=item PolicyDetails => L<Paws::DLM::PolicyDetails>

=item State => Str


=back

Each argument is described in detail in: L<Paws::DLM::CreateLifecyclePolicy>

Returns: a L<Paws::DLM::CreateLifecyclePolicyResponse> instance

Creates a policy to manage the lifecycle of the specified AWS
resources. You can create up to 100 lifecycle policies.


=head2 DeleteLifecyclePolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::DLM::DeleteLifecyclePolicy>

Returns: a L<Paws::DLM::DeleteLifecyclePolicyResponse> instance

Deletes the specified lifecycle policy and halts the automated
operations that the policy specified.


=head2 GetLifecyclePolicies

=over

=item [PolicyIds => ArrayRef[Str|Undef]]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [State => Str]

=item [TagsToAdd => ArrayRef[Str|Undef]]

=item [TargetTags => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DLM::GetLifecyclePolicies>

Returns: a L<Paws::DLM::GetLifecyclePoliciesResponse> instance

Gets summary information about all or the specified data lifecycle
policies.

To get complete information about a policy, use GetLifecyclePolicy.


=head2 GetLifecyclePolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::DLM::GetLifecyclePolicy>

Returns: a L<Paws::DLM::GetLifecyclePolicyResponse> instance

Gets detailed information about the specified lifecycle policy.


=head2 UpdateLifecyclePolicy

=over

=item PolicyId => Str

=item [Description => Str]

=item [ExecutionRoleArn => Str]

=item [PolicyDetails => L<Paws::DLM::PolicyDetails>]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::DLM::UpdateLifecyclePolicy>

Returns: a L<Paws::DLM::UpdateLifecyclePolicyResponse> instance

Updates the specified lifecycle policy.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

