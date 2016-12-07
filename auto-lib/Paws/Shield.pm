package Paws::Shield;
  use Moose;
  sub service { 'shield' }
  sub version { '2016-06-02' }
  sub target_prefix { 'AWSShield_20160616' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::CreateProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::CreateSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DeleteProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DeleteSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAttack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeAttack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::DescribeSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListAttacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProtections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::ListProtections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateProtection CreateSubscription DeleteProtection DeleteSubscription DescribeAttack DescribeProtection DescribeSubscription ListAttacks ListProtections / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield - Perl Interface to AWS AWS Shield

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Shield');
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

AWS Shield Advanced

This is the I<AWS Shield Advanced API Reference>. This guide is for
developers who need detailed information about the AWS Shield Advanced
API actions, data types, and errors. For detailed information about AWS
WAF and AWS Shield Advanced features and an overview of how to use the
AWS WAF and AWS Shield Advanced APIs, see the AWS WAF and AWS Shield
Developer Guide.

=head1 METHODS

=head2 CreateProtection(Name => Str, ResourceArn => Str)

Each argument is described in detail in: L<Paws::Shield::CreateProtection>

Returns: a L<Paws::Shield::CreateProtectionResponse> instance

  Enables AWS Shield Advanced for a specific AWS resource. The resource
can be an Amazon CloudFront distribution, Elastic Load Balancing load
balancer, or an Amazon Route 53 hosted zone.


=head2 CreateSubscription()

Each argument is described in detail in: L<Paws::Shield::CreateSubscription>

Returns: a L<Paws::Shield::CreateSubscriptionResponse> instance

  Activates AWS Shield Advanced for an account.


=head2 DeleteProtection(ProtectionId => Str)

Each argument is described in detail in: L<Paws::Shield::DeleteProtection>

Returns: a L<Paws::Shield::DeleteProtectionResponse> instance

  Deletes an AWS Shield Advanced Protection.


=head2 DeleteSubscription()

Each argument is described in detail in: L<Paws::Shield::DeleteSubscription>

Returns: a L<Paws::Shield::DeleteSubscriptionResponse> instance

  Removes AWS Shield Advanced from an account.


=head2 DescribeAttack(AttackId => Str)

Each argument is described in detail in: L<Paws::Shield::DescribeAttack>

Returns: a L<Paws::Shield::DescribeAttackResponse> instance

  Describes the details of a DDoS attack.


=head2 DescribeProtection(ProtectionId => Str)

Each argument is described in detail in: L<Paws::Shield::DescribeProtection>

Returns: a L<Paws::Shield::DescribeProtectionResponse> instance

  Lists the details of a Protection object.


=head2 DescribeSubscription()

Each argument is described in detail in: L<Paws::Shield::DescribeSubscription>

Returns: a L<Paws::Shield::DescribeSubscriptionResponse> instance

  Provides details about the AWS Shield Advanced subscription for an
account.


=head2 ListAttacks([EndTime => L<Paws::Shield::TimeRange>, MaxResults => Int, NextToken => Str, ResourceArns => ArrayRef[Str|Undef], StartTime => L<Paws::Shield::TimeRange>])

Each argument is described in detail in: L<Paws::Shield::ListAttacks>

Returns: a L<Paws::Shield::ListAttacksResponse> instance

  Returns all ongoing DDoS attacks or all DDoS attacks during a specified
time period.


=head2 ListProtections([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Shield::ListProtections>

Returns: a L<Paws::Shield::ListProtectionsResponse> instance

  Lists all Protection objects for the account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

