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


  sub operations { qw/AssociateServiceQuotaTemplate DeleteServiceQuotaIncreaseRequestFromTemplate DisassociateServiceQuotaTemplate GetAssociationForServiceQuotaTemplate GetAWSDefaultServiceQuota GetRequestedServiceQuotaChange GetServiceQuota GetServiceQuotaIncreaseRequestFromTemplate ListAWSDefaultServiceQuotas ListRequestedServiceQuotaChangeHistory ListRequestedServiceQuotaChangeHistoryByQuota ListServiceQuotaIncreaseRequestsInTemplate ListServiceQuotas ListServices PutServiceQuotaIncreaseRequestIntoTemplate RequestServiceQuotaIncrease / }

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

Service Quotas is a web service that you can use to manage many of your
AWS service quotas. Quotas, also referred to as limits, are the maximum
values for a resource, item, or operation. This guide provide
descriptions of the Service Quotas actions that you can call from an
API. For the Service Quotas user guide, which explains how to use
Service Quotas from the console, see What is Service Quotas
(https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html).

AWS provides SDKs that consist of libraries and sample code for
programming languages and platforms (Java, Ruby, .NET, iOS, Android,
etc...,). The SDKs provide a convenient way to create programmatic
access to Service Quotas and AWS. For information about the AWS SDKs,
including how to download and install them, see the Tools for Amazon
Web Services (https://docs.aws.amazon.com/aws.amazon.com/tools) page.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas-2019-06-24>


=head1 METHODS

=head2 AssociateServiceQuotaTemplate






Each argument is described in detail in: L<Paws::ServiceQuotas::AssociateServiceQuotaTemplate>

Returns: a L<Paws::ServiceQuotas::AssociateServiceQuotaTemplateResponse> instance

Associates the Service Quotas template with your organization so that
when new accounts are created in your organization, the template
submits increase requests for the specified service quotas. Use the
Service Quotas template to request an increase for any adjustable quota
value. After you define the Service Quotas template, use this operation
to associate, or enable, the template.


=head2 DeleteServiceQuotaIncreaseRequestFromTemplate

=over

=item AwsRegion => Str

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::DeleteServiceQuotaIncreaseRequestFromTemplate>

Returns: a L<Paws::ServiceQuotas::DeleteServiceQuotaIncreaseRequestFromTemplateResponse> instance

Removes a service quota increase request from the Service Quotas
template.


=head2 DisassociateServiceQuotaTemplate






Each argument is described in detail in: L<Paws::ServiceQuotas::DisassociateServiceQuotaTemplate>

Returns: a L<Paws::ServiceQuotas::DisassociateServiceQuotaTemplateResponse> instance

Disables the Service Quotas template. Once the template is disabled, it
does not request quota increases for new accounts in your organization.
Disabling the quota template does not apply the quota increase requests
from the template.

B<Related operations>

=over

=item *

To enable the quota template, call AssociateServiceQuotaTemplate.

=item *

To delete a specific service quota from the template, use
DeleteServiceQuotaIncreaseRequestFromTemplate.

=back



=head2 GetAssociationForServiceQuotaTemplate






Each argument is described in detail in: L<Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplate>

Returns: a L<Paws::ServiceQuotas::GetAssociationForServiceQuotaTemplateResponse> instance

Retrieves the C<ServiceQuotaTemplateAssociationStatus> value from the
service. Use this action to determine if the Service Quota template is
associated, or enabled.


=head2 GetAWSDefaultServiceQuota

=over

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::GetAWSDefaultServiceQuota>

Returns: a L<Paws::ServiceQuotas::GetAWSDefaultServiceQuotaResponse> instance

Retrieves the default service quotas values. The Value returned for
each quota is the AWS default value, even if the quotas have been
increased..


=head2 GetRequestedServiceQuotaChange

=over

=item RequestId => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::GetRequestedServiceQuotaChange>

Returns: a L<Paws::ServiceQuotas::GetRequestedServiceQuotaChangeResponse> instance

Retrieves the details for a particular increase request.


=head2 GetServiceQuota

=over

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::GetServiceQuota>

Returns: a L<Paws::ServiceQuotas::GetServiceQuotaResponse> instance

Returns the details for the specified service quota. This operation
provides a different Value than the C<GetAWSDefaultServiceQuota>
operation. This operation returns the applied value for each quota.
C<GetAWSDefaultServiceQuota> returns the default AWS value for each
quota.


=head2 GetServiceQuotaIncreaseRequestFromTemplate

=over

=item AwsRegion => Str

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplate>

Returns: a L<Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplateResponse> instance

Returns the details of the service quota increase request in your
template.


=head2 ListAWSDefaultServiceQuotas

=over

=item ServiceCode => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListAWSDefaultServiceQuotas>

Returns: a L<Paws::ServiceQuotas::ListAWSDefaultServiceQuotasResponse> instance

Lists all default service quotas for the specified AWS service or all
AWS services. ListAWSDefaultServiceQuotas is similar to
ListServiceQuotas except for the Value object. The Value object
returned by C<ListAWSDefaultServiceQuotas> is the default value
assigned by AWS. This request returns a list of all service quotas for
the specified service. The listing of each you'll see the default
values are the values that AWS provides for the quotas.

Always check the C<NextToken> response parameter when calling any of
the C<List*> operations. These operations can return an unexpected list
of results, even when there are more results available. When this
happens, the C<NextToken> response parameter contains a value to pass
the next call to the same API to request the next part of the list.


=head2 ListRequestedServiceQuotaChangeHistory

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceCode => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistory>

Returns: a L<Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse> instance

Requests a list of the changes to quotas for a service.


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

Requests a list of the changes to specific service quotas. This command
provides additional granularity over the
C<ListRequestedServiceQuotaChangeHistory> command. Once a quota change
request has reached C<CASE_CLOSED, APPROVED,> or C<DENIED>, the history
has been kept for 90 days.


=head2 ListServiceQuotaIncreaseRequestsInTemplate

=over

=item [AwsRegion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceCode => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplate>

Returns: a L<Paws::ServiceQuotas::ListServiceQuotaIncreaseRequestsInTemplateResponse> instance

Returns a list of the quota increase requests in the template.


=head2 ListServiceQuotas

=over

=item ServiceCode => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListServiceQuotas>

Returns: a L<Paws::ServiceQuotas::ListServiceQuotasResponse> instance

Lists all service quotas for the specified AWS service. This request
returns a list of the service quotas for the specified service. you'll
see the default values are the values that AWS provides for the quotas.

Always check the C<NextToken> response parameter when calling any of
the C<List*> operations. These operations can return an unexpected list
of results, even when there are more results available. When this
happens, the C<NextToken> response parameter contains a value to pass
the next call to the same API to request the next part of the list.


=head2 ListServices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::ListServices>

Returns: a L<Paws::ServiceQuotas::ListServicesResponse> instance

Lists the AWS services available in Service Quotas. Not all AWS
services are available in Service Quotas. To list the see the list of
the service quotas for a specific service, use ListServiceQuotas.


=head2 PutServiceQuotaIncreaseRequestIntoTemplate

=over

=item AwsRegion => Str

=item DesiredValue => Num

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplate>

Returns: a L<Paws::ServiceQuotas::PutServiceQuotaIncreaseRequestIntoTemplateResponse> instance

Defines and adds a quota to the service quota template. To add a quota
to the template, you must provide the C<ServiceCode>, C<QuotaCode>,
C<AwsRegion>, and C<DesiredValue>. Once you add a quota to the
template, use ListServiceQuotaIncreaseRequestsInTemplate to see the
list of quotas in the template.


=head2 RequestServiceQuotaIncrease

=over

=item DesiredValue => Num

=item QuotaCode => Str

=item ServiceCode => Str


=back

Each argument is described in detail in: L<Paws::ServiceQuotas::RequestServiceQuotaIncrease>

Returns: a L<Paws::ServiceQuotas::RequestServiceQuotaIncreaseResponse> instance

Retrieves the details of a service quota increase request. The response
to this command provides the details in the RequestedServiceQuotaChange
object.




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

