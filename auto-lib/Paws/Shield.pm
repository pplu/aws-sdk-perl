package Paws::Shield;
  use Moose;
  sub service { 'shield' }
  sub signing_name { 'shield' }
  sub version { '2016-06-02' }
  sub target_prefix { 'AWSShield_20160616' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
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
  sub GetSubscriptionState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Shield::GetSubscriptionState', @_);
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
  
  sub ListAllProtections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProtections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProtections(@_, NextToken => $next_result->NextToken);
        push @{ $result->Protections }, @{ $next_result->Protections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Protections') foreach (@{ $result->Protections });
        $result = $self->ListProtections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Protections') foreach (@{ $result->Protections });
    }

    return undef
  }


  sub operations { qw/CreateProtection CreateSubscription DeleteProtection DeleteSubscription DescribeAttack DescribeProtection DescribeSubscription GetSubscriptionState ListAttacks ListProtections / }

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
Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02>

=head1 METHODS

=head2 CreateProtection

=over

=item Name => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Shield::CreateProtection>

Returns: a L<Paws::Shield::CreateProtectionResponse> instance

Enables AWS Shield Advanced for a specific AWS resource. The resource
can be an Amazon CloudFront distribution, Elastic Load Balancing load
balancer, Elastic IP Address, or an Amazon Route 53 hosted zone.


=head2 CreateSubscription






Each argument is described in detail in: L<Paws::Shield::CreateSubscription>

Returns: a L<Paws::Shield::CreateSubscriptionResponse> instance

Activates AWS Shield Advanced for an account.


=head2 DeleteProtection

=over

=item ProtectionId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DeleteProtection>

Returns: a L<Paws::Shield::DeleteProtectionResponse> instance

Deletes an AWS Shield Advanced Protection.


=head2 DeleteSubscription






Each argument is described in detail in: L<Paws::Shield::DeleteSubscription>

Returns: a L<Paws::Shield::DeleteSubscriptionResponse> instance

Removes AWS Shield Advanced from an account. AWS Shield Advanced
requires a 1-year subscription commitment. You cannot delete a
subscription prior to the completion of that commitment.


=head2 DescribeAttack

=over

=item AttackId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DescribeAttack>

Returns: a L<Paws::Shield::DescribeAttackResponse> instance

Describes the details of a DDoS attack.


=head2 DescribeProtection

=over

=item ProtectionId => Str


=back

Each argument is described in detail in: L<Paws::Shield::DescribeProtection>

Returns: a L<Paws::Shield::DescribeProtectionResponse> instance

Lists the details of a Protection object.


=head2 DescribeSubscription






Each argument is described in detail in: L<Paws::Shield::DescribeSubscription>

Returns: a L<Paws::Shield::DescribeSubscriptionResponse> instance

Provides details about the AWS Shield Advanced subscription for an
account.


=head2 GetSubscriptionState






Each argument is described in detail in: L<Paws::Shield::GetSubscriptionState>

Returns: a L<Paws::Shield::GetSubscriptionStateResponse> instance

Returns the C<SubscriptionState>, either C<Active> or C<Inactive>.


=head2 ListAttacks

=over

=item [EndTime => L<Paws::Shield::TimeRange>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceArns => ArrayRef[Str|Undef]]

=item [StartTime => L<Paws::Shield::TimeRange>]


=back

Each argument is described in detail in: L<Paws::Shield::ListAttacks>

Returns: a L<Paws::Shield::ListAttacksResponse> instance

Returns all ongoing DDoS attacks or all DDoS attacks during a specified
time period.


=head2 ListProtections

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Shield::ListProtections>

Returns: a L<Paws::Shield::ListProtectionsResponse> instance

Lists all Protection objects for the account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllProtections(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProtections([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Protections, passing the object as the first parameter, and the string 'Protections' as the second parameter 

If not, it will return a a L<Paws::Shield::ListProtectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

