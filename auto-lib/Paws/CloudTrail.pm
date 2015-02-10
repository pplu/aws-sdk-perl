
use Paws::API;


package Paws::CloudTrail {
  use Moose;
  sub service { 'cloudtrail' }
  sub version { '2013-11-01' }
  sub target_prefix { 'com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::CreateTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DeleteTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::DescribeTrails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrailStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::GetTrailStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StartLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::StopLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudTrail::UpdateTrail', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail - Perl Interface to AWS AWS CloudTrail

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS CloudTrail

This is the CloudTrail API Reference. It provides descriptions of
actions, data types, common parameters, and common errors for
CloudTrail.

CloudTrail is a web service that records AWS API calls for your AWS
account and delivers log files to an Amazon S3 bucket. The recorded
information includes the identity of the user, the start time of the
AWS API call, the source IP address, the request parameters, and the
response elements returned by the service.

As an alternative to using the API, you can use one of the AWS SDKs,
which consist of libraries and sample code for various programming
languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The
SDKs provide a convenient way to create programmatic access to
AWSCloudTrail. For example, the SDKs take care of cryptographically
signing requests, managing errors, and retrying requests automatically.
For information about the AWS SDKs, including how to download and
install them, see the Tools for Amazon Web Services page.

See the CloudTrail User Guide for information about the data that is
included with each AWS API call listed in the log files.










=head1 METHODS

=head2 CreateTrail()

  Arguments described in: L<Paws::CloudTrail::CreateTrail>

  Returns: L<Paws::CloudTrail::CreateTrailResponse>

  

From the command line, use C<create-subscription>.

Creates a trail that specifies the settings for delivery of log data to
an Amazon S3 bucket.











=head2 DeleteTrail()

  Arguments described in: L<Paws::CloudTrail::DeleteTrail>

  Returns: L<Paws::CloudTrail::DeleteTrailResponse>

  

Deletes a trail.











=head2 DescribeTrails()

  Arguments described in: L<Paws::CloudTrail::DescribeTrails>

  Returns: L<Paws::CloudTrail::DescribeTrailsResponse>

  

Retrieves settings for the trail associated with the current region for
your account.











=head2 GetTrailStatus()

  Arguments described in: L<Paws::CloudTrail::GetTrailStatus>

  Returns: L<Paws::CloudTrail::GetTrailStatusResponse>

  

Returns a JSON-formatted list of information about the specified trail.
Fields include information on delivery errors, Amazon SNS and Amazon S3
errors, and start and stop logging times for each trail.











=head2 StartLogging()

  Arguments described in: L<Paws::CloudTrail::StartLogging>

  Returns: L<Paws::CloudTrail::StartLoggingResponse>

  

Starts the recording of AWS API calls and log file delivery for a
trail.











=head2 StopLogging()

  Arguments described in: L<Paws::CloudTrail::StopLogging>

  Returns: L<Paws::CloudTrail::StopLoggingResponse>

  

Suspends the recording of AWS API calls and log file delivery for the
specified trail. Under most circumstances, there is no need to use this
action. You can update a trail without stopping it first. This action
is the only way to stop recording.











=head2 UpdateTrail()

  Arguments described in: L<Paws::CloudTrail::UpdateTrail>

  Returns: L<Paws::CloudTrail::UpdateTrailResponse>

  

From the command line, use C<update-subscription>.

Updates the settings that specify delivery of log files. Changes to a
trail do not require stopping the CloudTrail service. Use this action
to designate an existing bucket for log delivery. If the existing
bucket has previously been a target for CloudTrail log files, an IAM
policy exists for the bucket.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

