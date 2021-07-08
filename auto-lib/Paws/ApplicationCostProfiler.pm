package Paws::ApplicationCostProfiler;
  use Moose;
  sub service { 'application-cost-profiler' }
  sub signing_name { 'application-cost-profiler' }
  sub version { '2020-09-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteReportDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationCostProfiler::DeleteReportDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReportDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationCostProfiler::GetReportDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportApplicationUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationCostProfiler::ImportApplicationUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReportDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationCostProfiler::ListReportDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutReportDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationCostProfiler::PutReportDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReportDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationCostProfiler::UpdateReportDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllReportDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReportDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListReportDefinitions(@_, nextToken => $next_result->nextToken);
        push @{ $result->reportDefinitions }, @{ $next_result->reportDefinitions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'reportDefinitions') foreach (@{ $result->reportDefinitions });
        $result = $self->ListReportDefinitions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'reportDefinitions') foreach (@{ $result->reportDefinitions });
    }

    return undef
  }


  sub operations { qw/DeleteReportDefinition GetReportDefinition ImportApplicationUsage ListReportDefinitions PutReportDefinition UpdateReportDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler - Perl Interface to AWS AWS Application Cost Profiler

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApplicationCostProfiler');
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

This reference provides descriptions of the AWS Application Cost
Profiler API.

The AWS Application Cost Profiler API provides programmatic access to
view, create, update, and delete application cost report definitions,
as well as to import your usage data into the Application Cost Profiler
service.

For more information about using this service, see the AWS Application
Cost Profiler User Guide
(https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-cost-profiler-2020-09-10>


=head1 METHODS

=head2 DeleteReportDefinition

=over

=item ReportId => Str


=back

Each argument is described in detail in: L<Paws::ApplicationCostProfiler::DeleteReportDefinition>

Returns: a L<Paws::ApplicationCostProfiler::DeleteReportDefinitionResult> instance

Deletes the specified report definition in AWS Application Cost
Profiler. This stops the report from being generated.


=head2 GetReportDefinition

=over

=item ReportId => Str


=back

Each argument is described in detail in: L<Paws::ApplicationCostProfiler::GetReportDefinition>

Returns: a L<Paws::ApplicationCostProfiler::GetReportDefinitionResult> instance

Retrieves the definition of a report already configured in AWS
Application Cost Profiler.


=head2 ImportApplicationUsage

=over

=item SourceS3Location => L<Paws::ApplicationCostProfiler::SourceS3Location>


=back

Each argument is described in detail in: L<Paws::ApplicationCostProfiler::ImportApplicationUsage>

Returns: a L<Paws::ApplicationCostProfiler::ImportApplicationUsageResult> instance

Ingests application usage data from Amazon Simple Storage Service
(Amazon S3).

The data must already exist in the S3 location. As part of the action,
AWS Application Cost Profiler copies the object from your S3 bucket to
an S3 bucket owned by Amazon for processing asynchronously.


=head2 ListReportDefinitions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationCostProfiler::ListReportDefinitions>

Returns: a L<Paws::ApplicationCostProfiler::ListReportDefinitionsResult> instance

Retrieves a list of all reports and their configurations for your AWS
account.

The maximum number of reports is one.


=head2 PutReportDefinition

=over

=item DestinationS3Location => L<Paws::ApplicationCostProfiler::S3Location>

=item Format => Str

=item ReportDescription => Str

=item ReportFrequency => Str

=item ReportId => Str


=back

Each argument is described in detail in: L<Paws::ApplicationCostProfiler::PutReportDefinition>

Returns: a L<Paws::ApplicationCostProfiler::PutReportDefinitionResult> instance

Creates the report definition for a report in Application Cost
Profiler.


=head2 UpdateReportDefinition

=over

=item DestinationS3Location => L<Paws::ApplicationCostProfiler::S3Location>

=item Format => Str

=item ReportDescription => Str

=item ReportFrequency => Str

=item ReportId => Str


=back

Each argument is described in detail in: L<Paws::ApplicationCostProfiler::UpdateReportDefinition>

Returns: a L<Paws::ApplicationCostProfiler::UpdateReportDefinitionResult> instance

Updates existing report in AWS Application Cost Profiler.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllReportDefinitions(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllReportDefinitions([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - reportDefinitions, passing the object as the first parameter, and the string 'reportDefinitions' as the second parameter 

If not, it will return a a L<Paws::ApplicationCostProfiler::ListReportDefinitionsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

