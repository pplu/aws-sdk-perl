package Paws::ServiceQuotas;
  use Moose;
  sub service { 'servicequotas' }
  sub signing_name { 'servicequotas' }
  sub version { '2019-06-24' }
  sub target_prefix { 'ServiceQuotasV20190624' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateServiceQuotaTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::AssociateServiceQuotaTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceQuotaIncreaseRequestFromTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::DeleteServiceQuotaIncreaseRequestFromTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateServiceQuotaTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::DisassociateServiceQuotaTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAssociationForServiceQuotaTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAWSDefaultServiceQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::GetAWSDefaultServiceQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRequestedServiceQuotaChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::GetRequestedServiceQuotaChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::GetServiceQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceQuotaIncreaseRequestFromTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAWSDefaultServiceQuotas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::ListAWSDefaultServiceQuotas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRequestedServiceQuotaChangeHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRequestedServiceQuotaChangeHistoryByQuota {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryByQuota', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceQuotaIncreaseRequestsInTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceQuotas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::ListServiceQuotas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutServiceQuotaIncreaseRequestIntoTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestServiceQuotaIncrease {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::RequestServiceQuotaIncrease', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceQuotas::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAWSDefaultServiceQuotas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAWSDefaultServiceQuotas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAWSDefaultServiceQuotas(@_, NextToken => $next_result->NextToken);
        push @{ $result->Quotas }, @{ $next_result->Quotas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Quotas') foreach (@{ $result->Quotas });
        $result = $self->ListAWSDefaultServiceQuotas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Quotas') foreach (@{ $result->Quotas });
    }

    return undef
  }
  sub ListAllRequestedServiceQuotaChangeHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRequestedServiceQuotaChangeHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRequestedServiceQuotaChangeHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->RequestedQuotas }, @{ $next_result->RequestedQuotas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RequestedQuotas') foreach (@{ $result->RequestedQuotas });
        $result = $self->ListRequestedServiceQuotaChangeHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RequestedQuotas') foreach (@{ $result->RequestedQuotas });
    }

    return undef
  }
  sub ListAllRequestedServiceQuotaChangeHistoryByQuota {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRequestedServiceQuotaChangeHistoryByQuota(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRequestedServiceQuotaChangeHistoryByQuota(@_, NextToken => $next_result->NextToken);
        push @{ $result->RequestedQuotas }, @{ $next_result->RequestedQuotas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RequestedQuotas') foreach (@{ $result->RequestedQuotas });
        $result = $self->ListRequestedServiceQuotaChangeHistoryByQuota(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RequestedQuotas') foreach (@{ $result->RequestedQuotas });
    }

    return undef
  }
  sub ListAllServiceQuotaIncreaseRequestsInTemplate {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceQuotaIncreaseRequestsInTemplate(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServiceQuotaIncreaseRequestsInTemplate(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceQuotaIncreaseRequestInTemplateList }, @{ $next_result->ServiceQuotaIncreaseRequestInTemplateList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceQuotaIncreaseRequestInTemplateList') foreach (@{ $result->ServiceQuotaIncreaseRequestInTemplateList });
        $result = $self->ListServiceQuotaIncreaseRequestsInTemplate(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceQuotaIncreaseRequestInTemplateList') foreach (@{ $result->ServiceQuotaIncreaseRequestInTemplateList });
    }

    return undef
  }
  sub ListAllServiceQuotas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceQuotas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServiceQuotas(@_, NextToken => $next_result->NextToken);
        push @{ $result->Quotas }, @{ $next_result->Quotas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Quotas') foreach (@{ $result->Quotas });
        $result = $self->ListServiceQuotas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Quotas') foreach (@{ $result->Quotas });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServices(@_, NextToken => $next_result->NextToken);
        push @{ $result->Services }, @{ $next_result->Services };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Services') foreach (@{ $result->Services });
        $result = $self->ListServices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Services') foreach (@{ $result->Services });
    }

    return undef
  }


  sub operations { qw/AssociateServiceQuotaTemplate DeleteServiceQuotaIncreaseRequestFromTemplate DisassociateServiceQuotaTemplate GetAssociationForServiceQuotaTemplate GetAWSDefaultServiceQuota GetRequestedServiceQuotaChange GetServiceQuota GetServiceQuotaIncreaseRequestFromTemplate ListAWSDefaultServiceQuotas ListRequestedServiceQuotaChangeHistory ListRequestedServiceQuotaChangeHistoryByQuota ListServiceQuotaIncreaseRequestsInTemplate ListServiceQuotas ListServices ListTagsForResource PutServiceQuotaIncreaseRequestIntoTemplate RequestServiceQuotaIncrease TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas - Perl Interface to AWS Service Quotas

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ServiceQuotas');
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

With Service Quotas, you can view and manage your quotas easily as your
AWS workloads grow. Quotas, also referred to as limits, are the maximum
number of resources that you can create in your AWS account. For more
information, see the Service Quotas User Guide
(https://docs.aws.amazon.com/servicequotas/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas-2019-06-24>


=head1 METHODS

=head2 AssociateServiceQuotaTemplate






Each argument is described in detail in: L<Paws::ServiceQuotas::AssociateServiceQuotaTemplate>

Returns: a L<Paws::ServiceQuotas::AssociateServiceQuotaTemplateResponse> instance

Associates your quota request template with your organization. When a
new account is created in your organization, the quota increase
requests in the template are automatically applied to the account. You
can add a quota increase request for any adjustable quota to your
template.


=head2 DeleteServiceQuotaIncreaseRequestFromTemplate

=over

=item AwsRegion => Str

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::DeleteServiceQuotaIncreaseRequestFromTemplate>

Returns: a L<Paws::ServiceQuotas::DeleteServiceQuotaIncreaseRequestFromTemplateResponse> instance

Deletes the quota increase request for the specified quota from your
quota request template.


=head2 DisassociateServiceQuotaTemplate






Each argument is described in detail in: L<Paws::ServiceQuotas::DisassociateServiceQuotaTemplate>

Returns: a L<Paws::ServiceQuotas::DisassociateServiceQuotaTemplateResponse> instance

Disables your quota request template. After a template is disabled, the
quota increase requests in the template are not applied to new accounts
in your organization. Disabling a quota request template does not apply
its quota increase requests.


=head2 GetAssociationForServiceQuotaTemplate






Each argument is described in detail in: L<Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplate>

Returns: a L<Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplateResponse> instance

Retrieves the status of the association for the quota request template.


=head2 GetAWSDefaultServiceQuota

=over

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::GetAWSDefaultServiceQuota>

Returns: a L<Paws::ServiceQuotas::GetAWSDefaultServiceQuotaResponse> instance

Retrieves the default value for the specified quota. The default value
does not reflect any quota increases.


=head2 GetRequestedServiceQuotaChange

=over

=item RequestId => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::GetRequestedServiceQuotaChange>

Returns: a L<Paws::ServiceQuotas::GetRequestedServiceQuotaChangeResponse> instance

Retrieves information about the specified quota increase request.


=head2 GetServiceQuota

=over

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::GetServiceQuota>

Returns: a L<Paws::ServiceQuotas::GetServiceQuotaResponse> instance

Retrieves the applied quota value for the specified quota. For some
quotas, only the default values are available. If the applied quota
value is not available for a quota, the quota is not retrieved.


=head2 GetServiceQuotaIncreaseRequestFromTemplate

=over

=item AwsRegion => Str

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplate>

Returns: a L<Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplateResponse> instance

Retrieves information about the specified quota increase request in
your quota request template.


=head2 ListAWSDefaultServiceQuotas

=over

=item ServiceCode => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListAWSDefaultServiceQuotas>

Returns: a L<Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse> instance

Lists the default values for the quotas for the specified AWS service.
A default value does not reflect any quota increases.


=head2 ListRequestedServiceQuotaChangeHistory

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceCode => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistory>

Returns: a L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse> instance

Retrieves the quota increase requests for the specified service.


=head2 ListRequestedServiceQuotaChangeHistoryByQuota

=over

=item QuotaCode => Str

=item ServiceCode => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryByQuota>

Returns: a L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryByQuotaResponse> instance

Retrieves the quota increase requests for the specified quota.


=head2 ListServiceQuotaIncreaseRequestsInTemplate

=over

=item [AwsRegion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceCode => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplate>

Returns: a L<Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplateResponse> instance

Lists the quota increase requests in the specified quota request
template.


=head2 ListServiceQuotas

=over

=item ServiceCode => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListServiceQuotas>

Returns: a L<Paws::ServiceQuotas::ListServiceQuotasResponse> instance

Lists the applied quota values for the specified AWS service. For some
quotas, only the default values are available. If the applied quota
value is not available for a quota, the quota is not retrieved.


=head2 ListServices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListServices>

Returns: a L<Paws::ServiceQuotas::ListServicesResponse> instance

Lists the names and codes for the services integrated with Service
Quotas.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListTagsForResource>

Returns: a L<Paws::ServiceQuotas::ListTagsForResourceResponse> instance

Returns a list of the tags assigned to the specified applied quota.


=head2 PutServiceQuotaIncreaseRequestIntoTemplate

=over

=item AwsRegion => Str

=item DesiredValue => Num

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplate>

Returns: a L<Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplateResponse> instance

Adds a quota increase request to your quota request template.


=head2 RequestServiceQuotaIncrease

=over

=item DesiredValue => Num

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::RequestServiceQuotaIncrease>

Returns: a L<Paws::ServiceQuotas::RequestServiceQuotaIncreaseResponse> instance

Submits a quota increase request for the specified quota.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::ServiceQuotas::Tag>]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::TagResource>

Returns: a L<Paws::ServiceQuotas::TagResourceResponse> instance

Adds tags to the specified applied quota. You can include one or more
tags to add to the quota.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::UntagResource>

Returns: a L<Paws::ServiceQuotas::UntagResourceResponse> instance

Removes tags from the specified applied quota. You can specify one or
more tags to remove.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAWSDefaultServiceQuotas(sub { },ServiceCode => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAWSDefaultServiceQuotas(ServiceCode => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Quotas, passing the object as the first parameter, and the string 'Quotas' as the second parameter 

If not, it will return a a L<Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRequestedServiceQuotaChangeHistory(sub { },[MaxResults => Int, NextToken => Str, ServiceCode => Str, Status => Str])

=head2 ListAllRequestedServiceQuotaChangeHistory([MaxResults => Int, NextToken => Str, ServiceCode => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RequestedQuotas, passing the object as the first parameter, and the string 'RequestedQuotas' as the second parameter 

If not, it will return a a L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRequestedServiceQuotaChangeHistoryByQuota(sub { },QuotaCode => Str, ServiceCode => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllRequestedServiceQuotaChangeHistoryByQuota(QuotaCode => Str, ServiceCode => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RequestedQuotas, passing the object as the first parameter, and the string 'RequestedQuotas' as the second parameter 

If not, it will return a a L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryByQuotaResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceQuotaIncreaseRequestsInTemplate(sub { },[AwsRegion => Str, MaxResults => Int, NextToken => Str, ServiceCode => Str])

=head2 ListAllServiceQuotaIncreaseRequestsInTemplate([AwsRegion => Str, MaxResults => Int, NextToken => Str, ServiceCode => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceQuotaIncreaseRequestInTemplateList, passing the object as the first parameter, and the string 'ServiceQuotaIncreaseRequestInTemplateList' as the second parameter 

If not, it will return a a L<Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplateResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceQuotas(sub { },ServiceCode => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServiceQuotas(ServiceCode => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Quotas, passing the object as the first parameter, and the string 'Quotas' as the second parameter 

If not, it will return a a L<Paws::ServiceQuotas::ListServiceQuotasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServices([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Services, passing the object as the first parameter, and the string 'Services' as the second parameter 

If not, it will return a a L<Paws::ServiceQuotas::ListServicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

