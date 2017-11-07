package Paws::IoT;
  use Moose;
  sub service { 'iot' }
  sub version { '2015-05-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AcceptCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachPrincipalPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AttachPrincipalPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachThingPrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AttachThingPrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CancelCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCertificateFromCsr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateCertificateFromCsr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeysAndCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateKeysAndCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreatePolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThingType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateThingType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCACertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteCACertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeletePolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegistrationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteRegistrationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThingType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteThingType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprecateThingType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeprecateThingType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCACertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeCACertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThingType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeThingType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachPrincipalPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DetachPrincipalPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachThingPrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DetachThingPrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DisableTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::EnableTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegistrationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetRegistrationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCACertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListCACertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCertificatesByCA {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListCertificatesByCA', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOutgoingCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListOutgoingCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyPrincipals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPolicyPrincipals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPolicyVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipalPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPrincipalPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipalThings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPrincipalThings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingPrincipals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingPrincipals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTopicRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListTopicRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterCACertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RegisterCACertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RegisterCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RejectCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ReplaceTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDefaultPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetDefaultPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransferCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::TransferCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCACertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateCACertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCACertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCACertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListCACertificates(@_, marker => $next_result->nextMarker);
        push @{ $result->certificates }, @{ $next_result->certificates };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'certificates') foreach (@{ $result->certificates });
        $result = $self->ListCACertificates(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'certificates') foreach (@{ $result->certificates });
    }

    return undef
  }
  sub ListAllCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListCertificates(@_, marker => $next_result->nextMarker);
        push @{ $result->certificates }, @{ $next_result->certificates };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'certificates') foreach (@{ $result->certificates });
        $result = $self->ListCertificates(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'certificates') foreach (@{ $result->certificates });
    }

    return undef
  }
  sub ListAllCertificatesByCA {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCertificatesByCA(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListCertificatesByCA(@_, marker => $next_result->nextMarker);
        push @{ $result->certificates }, @{ $next_result->certificates };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'certificates') foreach (@{ $result->certificates });
        $result = $self->ListCertificatesByCA(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'certificates') foreach (@{ $result->certificates });
    }

    return undef
  }
  sub ListAllOutgoingCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOutgoingCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListOutgoingCertificates(@_, marker => $next_result->nextMarker);
        push @{ $result->outgoingCertificates }, @{ $next_result->outgoingCertificates };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'outgoingCertificates') foreach (@{ $result->outgoingCertificates });
        $result = $self->ListOutgoingCertificates(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'outgoingCertificates') foreach (@{ $result->outgoingCertificates });
    }

    return undef
  }
  sub ListAllPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListPolicies(@_, marker => $next_result->nextMarker);
        push @{ $result->policies }, @{ $next_result->policies };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'policies') foreach (@{ $result->policies });
        $result = $self->ListPolicies(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'policies') foreach (@{ $result->policies });
    }

    return undef
  }
  sub ListAllPolicyPrincipals {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicyPrincipals(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListPolicyPrincipals(@_, marker => $next_result->nextMarker);
        push @{ $result->principals }, @{ $next_result->principals };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'principals') foreach (@{ $result->principals });
        $result = $self->ListPolicyPrincipals(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'principals') foreach (@{ $result->principals });
    }

    return undef
  }
  sub ListAllPrincipalPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrincipalPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListPrincipalPolicies(@_, marker => $next_result->nextMarker);
        push @{ $result->policies }, @{ $next_result->policies };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'policies') foreach (@{ $result->policies });
        $result = $self->ListPrincipalPolicies(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'policies') foreach (@{ $result->policies });
    }

    return undef
  }
  sub ListAllPrincipalThings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrincipalThings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPrincipalThings(@_, nextToken => $next_result->nextToken);
        push @{ $result->things }, @{ $next_result->things };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'things') foreach (@{ $result->things });
        $result = $self->ListPrincipalThings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'things') foreach (@{ $result->things });
    }

    return undef
  }
  sub ListAllThings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThings(@_, nextToken => $next_result->nextToken);
        push @{ $result->things }, @{ $next_result->things };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'things') foreach (@{ $result->things });
        $result = $self->ListThings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'things') foreach (@{ $result->things });
    }

    return undef
  }
  sub ListAllThingTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThingTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThingTypes(@_, nextToken => $next_result->nextToken);
        push @{ $result->thingTypes }, @{ $next_result->thingTypes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'thingTypes') foreach (@{ $result->thingTypes });
        $result = $self->ListThingTypes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'thingTypes') foreach (@{ $result->thingTypes });
    }

    return undef
  }
  sub ListAllTopicRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTopicRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTopicRules(@_, nextToken => $next_result->nextToken);
        push @{ $result->rules }, @{ $next_result->rules };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'rules') foreach (@{ $result->rules });
        $result = $self->ListTopicRules(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'rules') foreach (@{ $result->rules });
    }

    return undef
  }


  sub operations { qw/AcceptCertificateTransfer AttachPrincipalPolicy AttachThingPrincipal CancelCertificateTransfer CreateCertificateFromCsr CreateKeysAndCertificate CreatePolicy CreatePolicyVersion CreateThing CreateThingType CreateTopicRule DeleteCACertificate DeleteCertificate DeletePolicy DeletePolicyVersion DeleteRegistrationCode DeleteThing DeleteThingType DeleteTopicRule DeprecateThingType DescribeCACertificate DescribeCertificate DescribeEndpoint DescribeThing DescribeThingType DetachPrincipalPolicy DetachThingPrincipal DisableTopicRule EnableTopicRule GetLoggingOptions GetPolicy GetPolicyVersion GetRegistrationCode GetTopicRule ListCACertificates ListCertificates ListCertificatesByCA ListOutgoingCertificates ListPolicies ListPolicyPrincipals ListPolicyVersions ListPrincipalPolicies ListPrincipalThings ListThingPrincipals ListThings ListThingTypes ListTopicRules RegisterCACertificate RegisterCertificate RejectCertificateTransfer ReplaceTopicRule SetDefaultPolicyVersion SetLoggingOptions TransferCertificate UpdateCACertificate UpdateCertificate UpdateThing / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT - Perl Interface to AWS AWS IoT

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoT');
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

AWS IoT

AWS IoT provides secure, bi-directional communication between
Internet-connected things (such as sensors, actuators, embedded
devices, or smart appliances) and the AWS cloud. You can discover your
custom IoT-Data endpoint to communicate with, configure rules for data
processing and integration with other services, organize resources
associated with each thing (Thing Registry), configure logging, and
create and manage policies and credentials to authenticate things.

For more information about how AWS IoT works, see the Developer Guide.

=head1 METHODS

=head2 AcceptCertificateTransfer(CertificateId => Str, [SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::AcceptCertificateTransfer>

Returns: nothing

Accepts a pending certificate transfer. The default state of the
certificate is INACTIVE.

To check for pending certificate transfers, call ListCertificates to
enumerate your certificates.


=head2 AttachPrincipalPolicy(PolicyName => Str, Principal => Str)

Each argument is described in detail in: L<Paws::IoT::AttachPrincipalPolicy>

Returns: nothing

Attaches the specified policy to the specified principal (certificate
or other credential).


=head2 AttachThingPrincipal(Principal => Str, ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::AttachThingPrincipal>

Returns: a L<Paws::IoT::AttachThingPrincipalResponse> instance

Attaches the specified principal to the specified thing.


=head2 CancelCertificateTransfer(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::CancelCertificateTransfer>

Returns: nothing

Cancels a pending transfer for the specified certificate.

B<Note> Only the transfer source account can use this operation to
cancel a transfer. (Transfer destinations can use
RejectCertificateTransfer instead.) After transfer, AWS IoT returns the
certificate to the source account in the INACTIVE state. After the
destination account has accepted the transfer, the transfer cannot be
cancelled.

After a certificate transfer is cancelled, the status of the
certificate changes from PENDING_TRANSFER to INACTIVE.


=head2 CreateCertificateFromCsr(CertificateSigningRequest => Str, [SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::CreateCertificateFromCsr>

Returns: a L<Paws::IoT::CreateCertificateFromCsrResponse> instance

Creates an X.509 certificate using the specified certificate signing
request.

B<Note:> The CSR must include a public key that is either an RSA key
with a length of at least 2048 bits or an ECC key from NIST P-256 or
NIST P-384 curves.

B<Note:> Reusing the same certificate signing request (CSR) results in
a distinct certificate.

You can create multiple certificates in a batch by creating a
directory, copying multiple .csr files into that directory, and then
specifying that directory on the command line. The following commands
show how to create a batch of certificates given a batch of CSRs.

Assuming a set of CSRs are located inside of the directory
my-csr-directory:

On Linux and OS X, the command is:

$ ls my-csr-directory/ | xargs -I {} aws iot
create-certificate-from-csr --certificate-signing-request
file://my-csr-directory/{}

This command lists all of the CSRs in my-csr-directory and pipes each
CSR file name to the aws iot create-certificate-from-csr AWS CLI
command to create a certificate for the corresponding CSR.

The aws iot create-certificate-from-csr part of the command can also be
run in parallel to speed up the certificate creation process:

$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot
create-certificate-from-csr --certificate-signing-request
file://my-csr-directory/{}

On Windows PowerShell, the command to create certificates for all CSRs
in my-csr-directory is:

E<gt> ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
--certificate-signing-request file://my-csr-directory/$_}

On a Windows command prompt, the command to create certificates for all
CSRs in my-csr-directory is:

E<gt> forfiles /p my-csr-directory /c "cmd /c aws iot
create-certificate-from-csr --certificate-signing-request file://@path"


=head2 CreateKeysAndCertificate([SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::CreateKeysAndCertificate>

Returns: a L<Paws::IoT::CreateKeysAndCertificateResponse> instance

Creates a 2048-bit RSA key pair and issues an X.509 certificate using
the issued public key.

B<Note> This is the only time AWS IoT issues the private key for this
certificate, so it is important to keep it in a secure location.


=head2 CreatePolicy(PolicyDocument => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::CreatePolicy>

Returns: a L<Paws::IoT::CreatePolicyResponse> instance

Creates an AWS IoT policy.

The created policy is the default version for the policy. This
operation creates a policy version with a version identifier of B<1>
and sets B<1> as the policy's default version.


=head2 CreatePolicyVersion(PolicyDocument => Str, PolicyName => Str, [SetAsDefault => Bool])

Each argument is described in detail in: L<Paws::IoT::CreatePolicyVersion>

Returns: a L<Paws::IoT::CreatePolicyVersionResponse> instance

Creates a new version of the specified AWS IoT policy. To update a
policy, create a new policy version. A managed policy can have up to
five versions. If the policy has five versions, you must use
DeletePolicyVersion to delete an existing version before you create a
new one.

Optionally, you can set the new version as the policy's default
version. The default version is the operative version (that is, the
version that is in effect for the certificates to which the policy is
attached).


=head2 CreateThing(ThingName => Str, [AttributePayload => L<Paws::IoT::AttributePayload>, ThingTypeName => Str])

Each argument is described in detail in: L<Paws::IoT::CreateThing>

Returns: a L<Paws::IoT::CreateThingResponse> instance

Creates a thing record in the thing registry.


=head2 CreateThingType(ThingTypeName => Str, [ThingTypeProperties => L<Paws::IoT::ThingTypeProperties>])

Each argument is described in detail in: L<Paws::IoT::CreateThingType>

Returns: a L<Paws::IoT::CreateThingTypeResponse> instance

Creates a new thing type.


=head2 CreateTopicRule(RuleName => Str, TopicRulePayload => L<Paws::IoT::TopicRulePayload>)

Each argument is described in detail in: L<Paws::IoT::CreateTopicRule>

Returns: nothing

Creates a rule. Creating rules is an administrator-level action. Any
user who has permission to create rules will be able to access data
processed by the rule.


=head2 DeleteCACertificate(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteCACertificate>

Returns: a L<Paws::IoT::DeleteCACertificateResponse> instance

Deletes a registered CA certificate.


=head2 DeleteCertificate(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteCertificate>

Returns: nothing

Deletes the specified certificate.

A certificate cannot be deleted if it has a policy attached to it or if
its status is set to ACTIVE. To delete a certificate, first use the
DetachPrincipalPolicy API to detach all policies. Next, use the
UpdateCertificate API to set the certificate to the INACTIVE status.


=head2 DeletePolicy(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::DeletePolicy>

Returns: nothing

Deletes the specified policy.

A policy cannot be deleted if it has non-default versions or it is
attached to any certificate.

To delete a policy, use the DeletePolicyVersion API to delete all
non-default versions of the policy; use the DetachPrincipalPolicy API
to detach the policy from any certificate; and then use the
DeletePolicy API to delete the policy.

When a policy is deleted using DeletePolicy, its default version is
deleted with it.


=head2 DeletePolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::DeletePolicyVersion>

Returns: nothing

Deletes the specified version of the specified policy. You cannot
delete the default version of a policy using this API. To delete the
default version of a policy, use DeletePolicy. To find out which
version of a policy is marked as the default version, use
ListPolicyVersions.


=head2 DeleteRegistrationCode()

Each argument is described in detail in: L<Paws::IoT::DeleteRegistrationCode>

Returns: a L<Paws::IoT::DeleteRegistrationCodeResponse> instance

Deletes a CA certificate registration code.


=head2 DeleteThing(ThingName => Str, [ExpectedVersion => Int])

Each argument is described in detail in: L<Paws::IoT::DeleteThing>

Returns: a L<Paws::IoT::DeleteThingResponse> instance

Deletes the specified thing.


=head2 DeleteThingType(ThingTypeName => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteThingType>

Returns: a L<Paws::IoT::DeleteThingTypeResponse> instance

Deletes the specified thing type . You cannot delete a thing type if it
has things associated with it. To delete a thing type, first mark it as
deprecated by calling DeprecateThingType, then remove any associated
things by calling UpdateThing to change the thing type on any
associated thing, and finally use DeleteThingType to delete the thing
type.


=head2 DeleteTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::DeleteTopicRule>

Returns: nothing

Deletes the specified rule.


=head2 DeprecateThingType(ThingTypeName => Str, [UndoDeprecate => Bool])

Each argument is described in detail in: L<Paws::IoT::DeprecateThingType>

Returns: a L<Paws::IoT::DeprecateThingTypeResponse> instance

Deprecates a thing type. You can not associate new things with
deprecated thing type.


=head2 DescribeCACertificate(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::DescribeCACertificate>

Returns: a L<Paws::IoT::DescribeCACertificateResponse> instance

Describes a registered CA certificate.


=head2 DescribeCertificate(CertificateId => Str)

Each argument is described in detail in: L<Paws::IoT::DescribeCertificate>

Returns: a L<Paws::IoT::DescribeCertificateResponse> instance

Gets information about the specified certificate.


=head2 DescribeEndpoint()

Each argument is described in detail in: L<Paws::IoT::DescribeEndpoint>

Returns: a L<Paws::IoT::DescribeEndpointResponse> instance

Returns a unique endpoint specific to the AWS account making the call.


=head2 DescribeThing(ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::DescribeThing>

Returns: a L<Paws::IoT::DescribeThingResponse> instance

Gets information about the specified thing.


=head2 DescribeThingType(ThingTypeName => Str)

Each argument is described in detail in: L<Paws::IoT::DescribeThingType>

Returns: a L<Paws::IoT::DescribeThingTypeResponse> instance

Gets information about the specified thing type.


=head2 DetachPrincipalPolicy(PolicyName => Str, Principal => Str)

Each argument is described in detail in: L<Paws::IoT::DetachPrincipalPolicy>

Returns: nothing

Removes the specified policy from the specified certificate.


=head2 DetachThingPrincipal(Principal => Str, ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::DetachThingPrincipal>

Returns: a L<Paws::IoT::DetachThingPrincipalResponse> instance

Detaches the specified principal from the specified thing.


=head2 DisableTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::DisableTopicRule>

Returns: nothing

Disables the specified rule.


=head2 EnableTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::EnableTopicRule>

Returns: nothing

Enables the specified rule.


=head2 GetLoggingOptions()

Each argument is described in detail in: L<Paws::IoT::GetLoggingOptions>

Returns: a L<Paws::IoT::GetLoggingOptionsResponse> instance

Gets the logging options.


=head2 GetPolicy(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::GetPolicy>

Returns: a L<Paws::IoT::GetPolicyResponse> instance

Gets information about the specified policy with the policy document of
the default version.


=head2 GetPolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::GetPolicyVersion>

Returns: a L<Paws::IoT::GetPolicyVersionResponse> instance

Gets information about the specified policy version.


=head2 GetRegistrationCode()

Each argument is described in detail in: L<Paws::IoT::GetRegistrationCode>

Returns: a L<Paws::IoT::GetRegistrationCodeResponse> instance

Gets a registration code used to register a CA certificate with AWS
IoT.


=head2 GetTopicRule(RuleName => Str)

Each argument is described in detail in: L<Paws::IoT::GetTopicRule>

Returns: a L<Paws::IoT::GetTopicRuleResponse> instance

Gets information about the specified rule.


=head2 ListCACertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListCACertificates>

Returns: a L<Paws::IoT::ListCACertificatesResponse> instance

Lists the CA certificates registered for your AWS account.

The results are paginated with a default page size of 25. You can use
the returned marker to retrieve additional results.


=head2 ListCertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListCertificates>

Returns: a L<Paws::IoT::ListCertificatesResponse> instance

Lists the certificates registered in your AWS account.

The results are paginated with a default page size of 25. You can use
the returned marker to retrieve additional results.


=head2 ListCertificatesByCA(CaCertificateId => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListCertificatesByCA>

Returns: a L<Paws::IoT::ListCertificatesByCAResponse> instance

List the device certificates signed by the specified CA certificate.


=head2 ListOutgoingCertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListOutgoingCertificates>

Returns: a L<Paws::IoT::ListOutgoingCertificatesResponse> instance

Lists certificates that are being transfered but not yet accepted.


=head2 ListPolicies([AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListPolicies>

Returns: a L<Paws::IoT::ListPoliciesResponse> instance

Lists your policies.


=head2 ListPolicyPrincipals(PolicyName => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListPolicyPrincipals>

Returns: a L<Paws::IoT::ListPolicyPrincipalsResponse> instance

Lists the principals associated with the specified policy.


=head2 ListPolicyVersions(PolicyName => Str)

Each argument is described in detail in: L<Paws::IoT::ListPolicyVersions>

Returns: a L<Paws::IoT::ListPolicyVersionsResponse> instance

Lists the versions of the specified policy and identifies the default
version.


=head2 ListPrincipalPolicies(Principal => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::IoT::ListPrincipalPolicies>

Returns: a L<Paws::IoT::ListPrincipalPoliciesResponse> instance

Lists the policies attached to the specified principal. If you use an
Cognito identity, the ID must be in AmazonCognito Identity format.


=head2 ListPrincipalThings(Principal => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::IoT::ListPrincipalThings>

Returns: a L<Paws::IoT::ListPrincipalThingsResponse> instance

Lists the things associated with the specified principal.


=head2 ListThingPrincipals(ThingName => Str)

Each argument is described in detail in: L<Paws::IoT::ListThingPrincipals>

Returns: a L<Paws::IoT::ListThingPrincipalsResponse> instance

Lists the principals associated with the specified thing.


=head2 ListThings([AttributeName => Str, AttributeValue => Str, MaxResults => Int, NextToken => Str, ThingTypeName => Str])

Each argument is described in detail in: L<Paws::IoT::ListThings>

Returns: a L<Paws::IoT::ListThingsResponse> instance

Lists your things. Use the B<attributeName> and B<attributeValue>
parameters to filter your things. For example, calling C<ListThings>
with attributeName=Color and attributeValue=Red retrieves all things in
the registry that contain an attribute B<Color> with the value B<Red>.


=head2 ListThingTypes([MaxResults => Int, NextToken => Str, ThingTypeName => Str])

Each argument is described in detail in: L<Paws::IoT::ListThingTypes>

Returns: a L<Paws::IoT::ListThingTypesResponse> instance

Lists the existing thing types.


=head2 ListTopicRules([MaxResults => Int, NextToken => Str, RuleDisabled => Bool, Topic => Str])

Each argument is described in detail in: L<Paws::IoT::ListTopicRules>

Returns: a L<Paws::IoT::ListTopicRulesResponse> instance

Lists the rules for the specific topic.


=head2 RegisterCACertificate(CaCertificate => Str, VerificationCertificate => Str, [AllowAutoRegistration => Bool, SetAsActive => Bool])

Each argument is described in detail in: L<Paws::IoT::RegisterCACertificate>

Returns: a L<Paws::IoT::RegisterCACertificateResponse> instance

Registers a CA certificate with AWS IoT. This CA certificate can then
be used to sign device certificates, which can be then registered with
AWS IoT. You can register up to 10 CA certificates per AWS account that
have the same subject field. This enables you to have up to 10
certificate authorities sign your device certificates. If you have more
than one CA certificate registered, make sure you pass the CA
certificate when you register your device certificates with the
RegisterCertificate API.


=head2 RegisterCertificate(CertificatePem => Str, [CaCertificatePem => Str, SetAsActive => Bool, Status => Str])

Each argument is described in detail in: L<Paws::IoT::RegisterCertificate>

Returns: a L<Paws::IoT::RegisterCertificateResponse> instance

Registers a device certificate with AWS IoT. If you have more than one
CA certificate that has the same subject field, you must specify the CA
certificate that was used to sign the device certificate being
registered.


=head2 RejectCertificateTransfer(CertificateId => Str, [RejectReason => Str])

Each argument is described in detail in: L<Paws::IoT::RejectCertificateTransfer>

Returns: nothing

Rejects a pending certificate transfer. After AWS IoT rejects a
certificate transfer, the certificate status changes from
B<PENDING_TRANSFER> to B<INACTIVE>.

To check for pending certificate transfers, call ListCertificates to
enumerate your certificates.

This operation can only be called by the transfer destination. After it
is called, the certificate will be returned to the source's account in
the INACTIVE state.


=head2 ReplaceTopicRule(RuleName => Str, TopicRulePayload => L<Paws::IoT::TopicRulePayload>)

Each argument is described in detail in: L<Paws::IoT::ReplaceTopicRule>

Returns: nothing

Replaces the specified rule. You must specify all parameters for the
new rule. Creating rules is an administrator-level action. Any user who
has permission to create rules will be able to access data processed by
the rule.


=head2 SetDefaultPolicyVersion(PolicyName => Str, PolicyVersionId => Str)

Each argument is described in detail in: L<Paws::IoT::SetDefaultPolicyVersion>

Returns: nothing

Sets the specified version of the specified policy as the policy's
default (operative) version. This action affects all certificates to
which the policy is attached. To list the principals the policy is
attached to, use the ListPrincipalPolicy API.


=head2 SetLoggingOptions(LoggingOptionsPayload => L<Paws::IoT::LoggingOptionsPayload>)

Each argument is described in detail in: L<Paws::IoT::SetLoggingOptions>

Returns: nothing

Sets the logging options.


=head2 TransferCertificate(CertificateId => Str, TargetAwsAccount => Str, [TransferMessage => Str])

Each argument is described in detail in: L<Paws::IoT::TransferCertificate>

Returns: a L<Paws::IoT::TransferCertificateResponse> instance

Transfers the specified certificate to the specified AWS account.

You can cancel the transfer until it is acknowledged by the recipient.

No notification is sent to the transfer destination's account. It is up
to the caller to notify the transfer target.

The certificate being transferred must not be in the ACTIVE state. You
can use the UpdateCertificate API to deactivate it.

The certificate must not have any policies attached to it. You can use
the DetachPrincipalPolicy API to detach them.


=head2 UpdateCACertificate(CertificateId => Str, [NewAutoRegistrationStatus => Str, NewStatus => Str])

Each argument is described in detail in: L<Paws::IoT::UpdateCACertificate>

Returns: nothing

Updates a registered CA certificate.


=head2 UpdateCertificate(CertificateId => Str, NewStatus => Str)

Each argument is described in detail in: L<Paws::IoT::UpdateCertificate>

Returns: nothing

Updates the status of the specified certificate. This operation is
idempotent.

Moving a certificate from the ACTIVE state (including REVOKED) will not
disconnect currently connected devices, but these devices will be
unable to reconnect.

The ACTIVE state is required to authenticate devices connecting to AWS
IoT using a certificate.


=head2 UpdateThing(ThingName => Str, [AttributePayload => L<Paws::IoT::AttributePayload>, ExpectedVersion => Int, RemoveThingType => Bool, ThingTypeName => Str])

Each argument is described in detail in: L<Paws::IoT::UpdateThing>

Returns: a L<Paws::IoT::UpdateThingResponse> instance

Updates the data for a thing.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCACertificates(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllCACertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - certificates, passing the object as the first parameter, and the string 'certificates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListCACertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCertificates(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllCertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - certificates, passing the object as the first parameter, and the string 'certificates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCertificatesByCA(sub { },CaCertificateId => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllCertificatesByCA(CaCertificateId => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - certificates, passing the object as the first parameter, and the string 'certificates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListCertificatesByCAResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOutgoingCertificates(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllOutgoingCertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - outgoingCertificates, passing the object as the first parameter, and the string 'outgoingCertificates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListOutgoingCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicies(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllPolicies([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policies, passing the object as the first parameter, and the string 'policies' as the second parameter 

If not, it will return a a L<Paws::IoT::ListPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicyPrincipals(sub { },PolicyName => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllPolicyPrincipals(PolicyName => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - principals, passing the object as the first parameter, and the string 'principals' as the second parameter 

If not, it will return a a L<Paws::IoT::ListPolicyPrincipalsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrincipalPolicies(sub { },Principal => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllPrincipalPolicies(Principal => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policies, passing the object as the first parameter, and the string 'policies' as the second parameter 

If not, it will return a a L<Paws::IoT::ListPrincipalPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrincipalThings(sub { },Principal => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPrincipalThings(Principal => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - things, passing the object as the first parameter, and the string 'things' as the second parameter 

If not, it will return a a L<Paws::IoT::ListPrincipalThingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThings(sub { },[AttributeName => Str, AttributeValue => Str, MaxResults => Int, NextToken => Str, ThingTypeName => Str])

=head2 ListAllThings([AttributeName => Str, AttributeValue => Str, MaxResults => Int, NextToken => Str, ThingTypeName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - things, passing the object as the first parameter, and the string 'things' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThingTypes(sub { },[MaxResults => Int, NextToken => Str, ThingTypeName => Str])

=head2 ListAllThingTypes([MaxResults => Int, NextToken => Str, ThingTypeName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - thingTypes, passing the object as the first parameter, and the string 'thingTypes' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTopicRules(sub { },[MaxResults => Int, NextToken => Str, RuleDisabled => Bool, Topic => Str])

=head2 ListAllTopicRules([MaxResults => Int, NextToken => Str, RuleDisabled => Bool, Topic => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - rules, passing the object as the first parameter, and the string 'rules' as the second parameter 

If not, it will return a a L<Paws::IoT::ListTopicRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

